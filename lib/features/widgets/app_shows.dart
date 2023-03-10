import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:selim/resources/extensions.dart';
import 'package:selim/resources/resources.dart';
import '../../main.dart';
import '../../resources/app_constants.dart';

class AppShows {
  static showSnackBar(BuildContext context, String message) {
    globalKey.currentState?.showSnackBar(
      SnackBar(
        content: Center(
          child: Text(message),
        ),
      ),
    );
  }

  static showSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: SizedBox(
            height: context.height * 0.35,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.close,
                      )),
                ),
                SvgPicture.asset(
                  Svgs.success,
                  height: context.height * 0.1,
                  color: Colors.green,
                ),
                const SizedBox(height: 30),
                const Text(
                  'Заявка успешно \n отправлена',
                  style: AppConstants.textBlackS20W700,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                const Text(
                  'Ваша заявка отправлена рассмотрение. В ближайшее время с вами свяжется наш специалист',
                  style: AppConstants.textBlackS14W300,
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
