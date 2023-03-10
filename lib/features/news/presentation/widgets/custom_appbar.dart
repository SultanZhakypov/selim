import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
    required this.drawerkey,
  }) : super(key: key);
  final String title;
  final String subTitle;
  final double padding;
  final bool textAlign;
  final GlobalKey<ScaffoldState> drawerkey;

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
              InkWell(
                  onTap: () => drawerkey.currentState!.openEndDrawer(),
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
    required this.drawerkey,
  }) : super(key: key);

  final GlobalKey<ScaffoldState> drawerkey;

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
                InkWell(
                    onTap: () => drawerkey.currentState!.openEndDrawer(),
                    child: SvgPicture.asset(Svgs.menu)),
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
