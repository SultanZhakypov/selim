import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:selim/resources/app_constants.dart';

class CachedImage extends StatelessWidget {
  const CachedImage({super.key, required this.imageurl, this.widget});

  final String imageurl;
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageurl,
      imageBuilder: (context, imageProvider) {
        return DecoratedBox(
            decoration: BoxDecoration(
              image: DecorationImage(image: imageProvider, fit: BoxFit.fill),
            ),
            child: widget);
      },
      errorWidget: (context, url, error) => const ColoredBox(
        color: AppColors.colorTransparent,
        child: Center(
          child: Icon(Icons.error_outline),
        ),
      ),
      progressIndicatorBuilder: (context, url, progress) => Center(
        child: LoadingAnimationWidget.staggeredDotsWave(
            color: Colors.black, size: 50),
      ),
    );
  }
}
