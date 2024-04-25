import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_widgets/src/config/imageCached_config.dart';

import 'customImageWidget.dart';

class CustomImageNetworkWidget extends StatelessWidget {
  final String url;
  final BoxFit? fit;
  final double? width;
  final double? height;
  final String defaultImageError;
  final String? defaultImageDirectory;
  final bool showLoading;
  const CustomImageNetworkWidget(
    this.url, {
    super.key,
    this.fit,
    this.width,
    this.height,
    this.defaultImageDirectory = "images",
    this.defaultImageError = "imageNotFound",
    this.showLoading = true,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      key: Key(url),
      cacheKey: url,
      imageUrl: url,
      fit: fit,
      height: height,
      width: width,
      cacheManager: CustomCacheManager.instance,
      progressIndicatorBuilder: showLoading
          ? (context, url, downloadProgress) => Center(
              child:
                  CircularProgressIndicator(value: downloadProgress.progress))
          : null,
      errorWidget: (context, url, error) => CustomImageWidget(
        defaultImageError,
        directory: defaultImageDirectory,
        fit: fit,
        height: height,
        width: width,
      ),
    );
  }
}
