import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:selim/resources/app_constants.dart';
import 'package:selim/resources/resources.dart';

class AppArrowButton extends StatelessWidget {
  const AppArrowButton({
    Key? key,
    required this.onPress,
    required this.icon,
  }) : super(key: key);
  final Function() onPress;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: const ShapeDecoration(
        color: AppColors.colorBlack02,
        shape: CircleBorder(),
      ),
      child: IconButton(
        padding: const EdgeInsets.only(left: 10),
        color: Colors.blue,
        onPressed: onPress,
        icon: Icon(icon),
      ),
    );
  }
}

class AppButton extends StatelessWidget {
  const AppButton({
    Key? key,
    required this.title,
    required this.isVisibleIcon,
    required this.onPress,
  }) : super(key: key);
  final String title;
  final bool isVisibleIcon;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.colorLightBlue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          isVisibleIcon
              ? SvgPicture.asset(Svgs.zakazatVorota)
              : const SizedBox.shrink(),
          const SizedBox(width: 18),
          Text(
            title,
            style: AppConstants.textWhiteInterS15W900,
          ),
        ],
      ),
    );
  }
}

class AppButton2 extends StatelessWidget {
  const AppButton2({
    Key? key,
    required this.onPress,
    required this.title,
  }) : super(key: key);

  final Function() onPress;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(
            color: Colors.blue,
            width: 1,
          ),
        ),
      ),
      child: Text(
        title,
        style: AppConstants.textWhiteInterS12W400,
      ),
    );
  }
}
