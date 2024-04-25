import 'package:flutter/material.dart';

class CustomImageWidget extends StatelessWidget {
  final String img;
  final BoxFit? fit;
  final String imgType;
  final double? width;
  final double? height;
  final String? directory;
  final Color? color;
  final BlendMode? colorBlendMode;
  final String defaultImageError;
  const CustomImageWidget(
    this.img, {
    super.key,
    this.fit,
    this.imgType = "png",
    this.width,
    this.height,
    this.directory = "images",
    this.defaultImageError = "images/imageNotFound.png",
    this.color,
    this.colorBlendMode,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      key: key,
      "$directory/$img.$imgType",
      fit: fit,
      colorBlendMode: colorBlendMode,
      height: height,
      width: width,
      color: color,
      errorBuilder: (context, error, stackTrace) {
        return Image.asset(
          defaultImageError,
          fit: fit,
          colorBlendMode: colorBlendMode,
          height: height,
          width: width,
          color: color,
        );
      },
    );
  }
}
