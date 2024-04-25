import 'dart:io';

import 'package:flutter/material.dart';

class CustomImageFileWidget extends StatelessWidget {
  final String img;
  final BoxFit? fit;
  final double? width;
  final double? height;
  final Color? color;

  const CustomImageFileWidget(
    this.img, {
    super.key,
    this.fit,
    this.color,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Image.file(
      File(img),
      fit: fit,
      height: height,
      width: width,
      color: color,
    );
  }
}
