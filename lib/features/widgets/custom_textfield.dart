import 'package:flutter/material.dart';

import '../../resources/app_constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.title,
    this.maxLines = 1,
    required this.controller,
  }) : super(key: key);
  final String title;
  final int maxLines;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLines: maxLines,
      validator: (value) =>
          value!.isEmpty ? 'Заполните поле' : null,
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
