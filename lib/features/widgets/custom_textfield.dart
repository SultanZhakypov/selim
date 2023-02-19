import 'package:flutter/material.dart';

import '../../resources/app_constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.title,
    this.maxLines = 1,
  }) : super(key: key);
  final String title;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      validator: (value) =>
          value!.isEmpty ? 'LocaleKeys.zapolnite_pole.tr()' : null,
      cursorColor: AppColors.colorBlack,
      textInputAction: TextInputAction.next,
      style: AppConstants.textBlackS14W500,
      decoration: InputDecoration(
        hintText: title,
        hintStyle: AppConstants.textBlackS14W500,
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              color: AppColors.colorBlue,
              width: 1,
            )),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.colorBlack,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
