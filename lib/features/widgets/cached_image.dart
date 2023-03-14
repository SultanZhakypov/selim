import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:selim/resources/extensions.dart';

import '../../resources/app_constants.dart';

class CachedImage extends StatelessWidget {
  const CachedImage({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
        imageUrl: imageUrl,
        height: context.height * 0.095,
        fit: BoxFit.fill,
        placeholder: (context, url) {
          return Center(
            child: LoadingAnimationWidget.staggeredDotsWave(
              color: AppColors.colorBlack,
              size: 50,
            ),
          );
        },
        imageBuilder: (context, imageProvider) {
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: imageProvider),
            ),
          );
        },
        errorWidget: (context, url, error) {
          return const Center(
              child: Text(
            'ERROR',
            style: AppConstants.textBlackS14W500,
          ));
        });
  }
}
