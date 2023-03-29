import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:selim/features/widgets/launch_url.dart';
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
    String? currentRoute = ModalRoute.of(context)!.settings.name;
    void doRoute(BuildContext context, PageRouteInfo page) {
      if (currentRoute != page.routeName) {
        context.router.push(page);
      } else {
        null;
      }

      currentRoute = page.routeName;
    }

    showMenu(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      position: const RelativeRect.fromLTRB(100, 0, 0, 100),
      items: [
        PopupMenuItem(
          onTap: () => doRoute(context, const HomeScreenRoute()),
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
          onTap: () => doRoute(context, const ServicesScreenRoute()),
          child: const Text(
            'Услуги',
            style: AppConstants.textBlueS14W600,
          ),
        ),
        PopupMenuItem(
          onTap: () => doRoute(context, const NewsScreenRoute()),
          child: const Text(
            'Новости',
            style: AppConstants.textBlueS14W600,
          ),
        ),
        PopupMenuItem(
          onTap: () => doRoute(context, const WorksScreenRoute()),
          child: const Text(
            'Наши работы',
            style: AppConstants.textBlueS14W600,
          ),
        ),
        PopupMenuItem(
          child: InkWell(
            onTap: () => LaunchURLS.launchPhone(context, '+996552570755'),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'г.Бишкек',
                  style: AppConstants.textBlueS14W500,
                ),
                5.sizedBoxHeight,
                Row(
                  children: [
                    SvgPicture.asset(Svgs.phone),
                    5.sizedBoxWidth,
                    const Text(
                      '+996 (552) 57 07 55',
                      style: AppConstants.textBlueS14W600,
                    ),
                  ],
                )
              ],
            ),
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
        return const SuccessDialog();
      },
    );
  }
}

class SuccessDialog extends StatefulWidget {
  const SuccessDialog({
    super.key,
  });

  @override
  State<SuccessDialog> createState() => _SuccessDialogState();
}

class _SuccessDialogState extends State<SuccessDialog>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> scaleAnimation;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 650));
    scaleAnimation =
        CurvedAnimation(parent: controller, curve: Curves.elasticInOut);
    controller.addListener(() {
      setState(() {});
    });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: SizedBox(
        height: context.height * 0.4,
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                  onPressed: () => context.router.pop(),
                  icon: const Icon(
                    Icons.close,
                  )),
            ),
            ScaleTransition(
              scale: scaleAnimation,
              child: SvgPicture.asset(
                Svgs.success,
                height: context.height * 0.1,
                color: Colors.green,
              ),
            ),
            30.sizedBoxHeight,
            const Text(
              'Заявка успешно \n отправлена',
              style: AppConstants.textBlackS20W700,
              textAlign: TextAlign.center,
            ),
            10.sizedBoxHeight,
            const Text(
              'Ваша заявка отправлена рассмотрение. В ближайшее время с вами свяжется наш специалист',
              style: AppConstants.textBlackS14W300,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
