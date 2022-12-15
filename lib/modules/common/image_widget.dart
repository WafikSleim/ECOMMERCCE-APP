import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_app/core/resources/color_manger.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({Key? key, required this.imageUrl, required this.width, required this.height}) : super(key: key);

  final String imageUrl;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      width: width,
      height: height,
      fit: BoxFit.cover,
      progressIndicatorBuilder: (context, value, progress) {
        return Center(
            child: CircularProgressIndicator(
              color: ColorManger.turquoiseSurf,
              value: progress.progress,
            ));
      },
      errorWidget: (context, value, _) => Center(
        child: Container(
            color: ColorManger.lightSilver,
            width: width,
            height: height,
            child: const Icon(
              Icons.error_rounded,
              color: ColorManger.darkSilver,
            )),
      ),
    );
  }
}
