import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:selim/resources/extensions.dart';
import 'package:selim/resources/resources.dart';
import '../../core/routes/routes.gr.dart';
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

  static openPopUpMenu(BuildContext context) {
    showMenu(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      position: const RelativeRect.fromLTRB(100, 0, 0, 100),
      items: [
        PopupMenuItem(
          onTap: () => context.router.push(const HomeScreenRoute()),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Главная',
                style: AppConstants.textBlueS14W600,
              ),
              SvgPicture.asset(
                Svgs.selimBlacck,
                height: 16,
              ),
            ],
          ),
        ),
        PopupMenuItem(
          onTap: () => context.router.push(const ServicesScreenRoute()),
          child: const Text(
            'Услуги',
            style: AppConstants.textBlueS14W600,
          ),
        ),
        PopupMenuItem(
          onTap: () => context.router.push(const NewsScreenRoute()),
          child: const Text(
            'Новости',
            style: AppConstants.textBlueS14W600,
          ),
        ),
        PopupMenuItem(
          onTap: () => context.router.push(const WorksScreenRoute()),
          child: const Text(
            'Наши работы',
            style: AppConstants.textBlueS14W600,
          ),
        ),
        PopupMenuItem(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'г.Бишкек',
                style: AppConstants.textBlueS14W500,
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  SvgPicture.asset(Svgs.phone),
                  const SizedBox(width: 5),
                  const Text(
                    '+996 (552) 57 07 55',
                    style: AppConstants.textBlueS14W600,
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }

  static showSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        Future.delayed(const Duration(seconds: 5), () {
          context.router.pop();
        });
        return AlertDialog(
          content: SizedBox(
            height: context.height * 0.35,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                      onPressed: () => context.router.pop(true),
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
