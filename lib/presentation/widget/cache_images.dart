import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CacheImageOrSvg extends StatelessWidget {
  const CacheImageOrSvg({
    required this.source,
    this.colorAsset,
    super.key,
    this.isCircle = false,
    this.fit = BoxFit.cover,
    this.borderRadius,
    this.errorBuilder,
    this.width,
    this.height,
    this.cacheHeight,
    this.cacheWidth,
    this.placeholderBuilder,
    this.svgColor,
    this.svgBlendMode = BlendMode.srcIn,
  });

  final String source;
  final Color? colorAsset;
  final Color? svgColor;
  final BlendMode svgBlendMode;
  final bool isCircle;
  final BorderRadius? borderRadius;
  final Widget Function(BuildContext context, String error, dynamic stackTrace)?
  errorBuilder;
  final BoxFit fit;
  final double? width;
  final double? height;
  final int? cacheHeight;
  final int? cacheWidth;
  final Widget Function(BuildContext context)? placeholderBuilder;

  /// Color to apply to SVG files. If null, will use [colorAsset] as fallback
  /// This gives more control over SVG coloring separate from regular images

  /// Blend mode for SVG color filtering. Default is [BlendMode.srcIn]

  bool get _isSvg => source.toLowerCase().endsWith('.svg');

  /// Get the effective color for SVG. Priority: svgColor > colorAsset > null
  Color? get _effectiveSvgColor => svgColor ?? colorAsset;

  Widget _buildErrorWidget(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: Colors.grey.shade100,
      child: const Center(
        child: Icon(Icons.broken_image_outlined, color: Colors.black54),
      ),
    );
  }

  Widget _buildPlaceholder(BuildContext context) {
    return placeholderBuilder?.call(context) ??
        Container(
          width: width,
          height: height,
          color: Colors.grey.shade100,
          child: const Center(
            child: SizedBox(
              height: 32,
              width: 32,
              child: CircularProgressIndicator(strokeWidth: 2),
            ),
          ),
        );
  }

  Widget _buildNetworkSvg() {
    return SvgPicture.network(
      source,
      width: width,
      height: height,
      fit: fit,
      colorFilter: _effectiveSvgColor != null
          ? ColorFilter.mode(_effectiveSvgColor!, svgBlendMode)
          : null,
      placeholderBuilder: placeholderBuilder != null
          ? (context) => placeholderBuilder!(context)
          : _buildPlaceholder,
    );
  }

  Widget _buildAssetSvg() {
    return SvgPicture.asset(
      source,
      width: width,
      height: height,
      fit: fit,
      colorFilter: _effectiveSvgColor != null
          ? ColorFilter.mode(_effectiveSvgColor!, svgBlendMode)
          : null,
    );
  }

  Widget _buildFileSvg() {
    return SvgPicture.file(
      File(source),
      width: width,
      height: height,
      fit: fit,
      colorFilter: _effectiveSvgColor != null
          ? ColorFilter.mode(_effectiveSvgColor!, svgBlendMode)
          : null,
    );
  }

  Widget _buildNetworkImage() {
    return CachedNetworkImage(
      imageUrl: source,
      fit: fit,
      width: width,
      height: height,
      memCacheHeight: cacheHeight,
      memCacheWidth: cacheWidth,
      color: colorAsset,
      progressIndicatorBuilder: (context, url, progress) =>
          _buildPlaceholder(context),
      errorWidget:
          errorBuilder ?? (context, e, s) => _buildErrorWidget(context),
    );
  }

  Widget _buildAssetImage() {
    return Image.asset(
      source,
      fit: fit,
      width: width,
      height: height,
      cacheHeight: cacheHeight,
      cacheWidth: cacheWidth,
      color: colorAsset,
      errorBuilder: (context, e, s) => _buildErrorWidget(context),
    );
  }

  Widget _buildFileImage() {
    return Image.file(
      File(source),
      fit: fit,
      width: width,
      height: height,
      cacheHeight: cacheHeight,
      cacheWidth: cacheWidth,
      color: colorAsset,
      errorBuilder: (context, e, s) => _buildErrorWidget(context),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget imageWidget;

    try {
      if (source.toLowerCase().startsWith('http')) {
        // Network source
        imageWidget = _isSvg ? _buildNetworkSvg() : _buildNetworkImage();
      } else if (source.toLowerCase().startsWith('assets')) {
        // Asset source
        imageWidget = _isSvg ? _buildAssetSvg() : _buildAssetImage();
      } else {
        // File source
        imageWidget = _isSvg ? _buildFileSvg() : _buildFileImage();
      }
    } on Exception catch (e) {
      // Fallback to error widget if something goes wrong
      imageWidget =
          errorBuilder?.call(context, e.toString(), null) ??
          _buildErrorWidget(context);
    }

    // Apply clipping
    if (isCircle) {
      return ClipOval(child: imageWidget);
    }

    if (borderRadius != null) {
      return ClipRRect(borderRadius: borderRadius!, child: imageWidget);
    }

    return imageWidget;
  }
}
