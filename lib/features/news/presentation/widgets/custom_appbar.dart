import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:selim/core/routes/routes.dart';

import 'package:selim/features/widgets/app_shows.dart';
import 'package:selim/resources/app_constants.dart';
import 'package:selim/resources/extensions.dart';
import 'package:selim/resources/resources.dart';

class Appbar1 extends StatelessWidget {
  const Appbar1({
    Key? key,
    required this.title,
    required this.subTitle,
    this.padding = 10,
    this.textAlign = true,
  }) : super(key: key);
  final String title;
  final String subTitle;
  final double padding;
  final bool textAlign;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                  onTap: () {
                    String? currentPage = ModalRoute.of(context)!.settings.name;
                    if (currentPage == 'HomeScreenRoute') {
                      null;
                    }
                    context.router.push(const HomeScreenRoute());
                  },
                  child: SvgPicture.asset(Svgs.selimBlacck)),
              InkWell(
                  onTap: () => AppShows.openPopUpMenu(context),
                  child: SvgPicture.asset(Svgs.menuBlack)),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: padding),
            child: Text(
              title,
              style: AppConstants.textBlackS16W700,
            ),
          ),
          Text(
            subTitle,
            style: AppConstants.textBlackS14W300,
            textAlign: textAlign ? TextAlign.center : null,
          ),
        ],
      ),
    );
  }
}

class AppBar2 extends StatelessWidget {
  const AppBar2({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height / 4,
      width: context.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: CachedNetworkImageProvider(image),
          fit: BoxFit.cover,
        ),
        borderRadius: const BorderRadius.only(
          bottomRight: Radius.circular(50),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: () {
                      String? currentPage =
                          ModalRoute.of(context)!.settings.name;
                      if (currentPage == 'HomeScreenRoute') {
                        null;
                      }
                      context.router.push(const HomeScreenRoute());
                    },
                    child: SvgPicture.asset(Svgs.selimG)),
                InkWell(
                    onTap: () => AppShows.openPopUpMenu(context),
                    child: SvgPicture.asset(Svgs.menu)),
              ],
            ),
            const SizedBox(height: 32),
            Text(
              title.toUpperCase(),
              style: AppConstants.textWhiteS16W800,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
