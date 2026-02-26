---
description: bantu saya untuk sso Google
---

# Google OAuth2 — Implementation Plan (Token-Based)
**Mobile:** `google_sign_in` Flutter package
**Backend:** Verify ID Token via Google API — tidak perlu `elysia-oauth2`

## Flow

```
Flutter                              Backend
  │                                     │
  ├── google_sign_in.signIn() ─────────►│
  │   (native Google dialog)            │
  │                                     │
  ├── dapat idToken ─── POST /api/v1/auth/google ──►│
  │   { id_token, uuid_device,          │ verify ke Google API
  │     fcm_token?, device_type? }      │ cari/buat user
  │                                     │
  │◄─────────── Profile lengkap? ───────┤
  │                                     │
  │  YA → return JWT langsung           │
  │                                     │
  │  TIDAK → return {                   │
  │    needs_completion: true,          │
  │    temp_token,                      │
  │    name (dari Google)               │
  │  }                                  │
  │                                     │
  ├── tampilkan form (phone wajib, name optional)
  │                                     │
  └── POST /api/v1/auth/complete-profile ──►│
      { temp_token, phone, name? }      │ update user
                                        │ return JWT
```

> [!IMPORTANT]
> Google **tidak memberikan nomor telepon** — jadi `phone` akan **selalu** perlu diisi oleh user via form.

## Endpoint Baru (cukup 2)

| Method | Endpoint | Body |
|---|---|---|
| `POST` | `/api/v1/auth/google` | `id_token, uuid_device, fcm_token?, device_type?` |
| `POST` | `/api/v1/auth/complete-profile` | `temp_token, phone, name?` |

---

## Proposed Changes

### Database

#### [MODIFY] [users.ts](file:///c:/Users/AdamPerxy/project/happyfinance-backend/src/db/schema/users.ts)
- `password` → **nullable** (user OAuth tidak punya password)
- `avatar` → VARCHAR(500) untuk URL foto Google
- Tambah `google_id` VARCHAR(255) UNIQUE nullable
- Tambah `auth_provider` ENUM(`email`, `google`, `both`) default `email`

---

### Environment

#### [MODIFY] [env.ts](file:///c:/Users/AdamPerxy/project/happyfinance-backend/src/helper/env.ts)
```ts
// Google OAuth — hanya CLIENT_ID yang dibutuhkan untuk verifikasi ID Token
GOOGLE_CLIENT_ID: string;
```

> [!NOTE]
> `GOOGLE_CLIENT_SECRET` dan `GOOGLE_REDIRECT_URI` tidak diperlukan untuk token-based approach. Bisa dihapus dari [.env](file:///c:/Users/AdamPerxy/project/happyfinance-backend/.env).

---

### Helpers

#### [NEW] `src/helper/google.ts`
Verifikasi `id_token` ke Google:
```ts
GET https://oauth2.googleapis.com/tokeninfo?id_token=TOKEN
```
Validasi `aud` == `GOOGLE_CLIENT_ID`, return `{ sub, email, name, picture }`.

#### [MODIFY] [jwt.ts](file:///c:/Users/AdamPerxy/project/happyfinance-backend/src/helper/jwt.ts)
Tambah `generateTempToken(userId)` — JWT 15 menit untuk complete-profile flow.

---

### Auth Module

#### [MODIFY] [auth.models.ts](file:///c:/Users/AdamPerxy/project/happyfinance-backend/src/module/auth/auth.models.ts)
Tambah:
- `GoogleAuthSchema` — body `POST /auth/google`
- `CompleteProfileSchema` — body `POST /auth/complete-profile`

#### [MODIFY] [auth.service.ts](file:///c:/Users/AdamPerxy/project/happyfinance-backend/src/module/auth/auth.service.ts)
Fungsi `loginWithGoogle(data)`:
1. Verify ID token ke Google API
2. `google_id` sudah ada → login, return JWT
3. `email` sudah ada (akun email biasa) → link akun, `auth_provider='both'`, return JWT
4. Tidak ada → buat user baru (`is_active=true`, `is_email_verified=true`) → return `{ needs_completion: true, temp_token, name }`

Fungsi `completeProfile(tempToken, { phone, name })`:
1. Verify temp JWT
2. Update `phone`, `name` user
3. Return final JWT

#### [MODIFY] [auth.route.ts](file:///c:/Users/AdamPerxy/project/happyfinance-backend/src/module/auth/auth.route.ts)
Tambah 2 endpoint di dalam grup `/api/v1/auth`:
- `POST /auth/google`
- `POST /auth/complete-profile`

---

### Migration
```bash
bun run db:generate
bun run db:push
```

---

## Setup Flutter (Ringkasan)
```yaml
# pubspec.yaml
dependencies:
  google_sign_in: ^6.x.x
```
```dart
final googleSignIn = GoogleSignIn(scopes: ['email', 'profile']);
final account = await googleSignIn.signIn();
final auth = await account!.authentication;
final idToken = auth.idToken; // kirim ini ke backend
```
Setup `google-services.json` + SHA-1 di Google Console.

---

## Verification Plan
1. POST `/api/v1/auth/google` dengan valid ID Token → return JWT / `needs_completion`
2. POST `/api/v1/auth/google` dengan token invalid → return 400
3. POST `/api/v1/auth/complete-profile` dengan valid `temp_token` → return JWT
4. POST `/api/v1/auth/complete-profile` dengan `temp_token` expired → return 401
5. Login Google dua kali dengan akun sama → tidak duplikat user
6. Google login dengan email yang sudah ada (email biasa) → `auth_provider='both'`


##Google OAuth login​
Login or register via Google. Send idToken from flutter google_sign_in package. Returns JWT or temp_token if profile completion is needed.
payload: curl http://192.168.8.105:3000/api/v1/auth/google \
  --request POST \
  --header 'Content-Type: application/json' \
  --data '{
  "id_token": "",
  "uuid_device": "",
  "fcm_token": "",
  "device_type": ""
}'

##Complete profile after Google OAuth​
Called after Google login when phone number is missing. Use the temp_token received from /auth/google response.
curl http://192.168.8.105:3000/api/v1/auth/complete-profile \
  --request POST \
  --header 'Content-Type: application/json' \
  --data '{
  "temp_token": "",
  "phone": "",
  "name": ""
}'