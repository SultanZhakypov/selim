import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:selim/resources/app_constants.dart';
import 'package:selim/resources/extensions.dart';
import 'package:selim/resources/resources.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    Key? key,
    required this.title,
    required this.subTitle,
  }) : super(key: key);
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(Svgs.selimBlacck),
              SvgPicture.asset(Svgs.menuBlack),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              title,
              style: AppConstants.textBlackS16W700,
            ),
          ),
          Text(
            subTitle,
            style: AppConstants.textBlackS14W300,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class KarAppBar extends StatelessWidget {
  const KarAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height / 4,
      width: context.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Images.justImage),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.only(
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
                SvgPicture.asset(Svgs.selimG),
                SvgPicture.asset(Svgs.menu),
              ],
            ),
            const SizedBox(height: 18),
            const Text(
              'ПРОМЫШЛЕННЫЕ \n СЕКЦИОННЫЕ ВОРОТА',
              style: AppConstants.textWhiteS16W800,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
