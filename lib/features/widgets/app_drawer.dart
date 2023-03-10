import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:selim/core/routes/routes.dart';
import 'package:selim/resources/extensions.dart';
import '../../resources/app_constants.dart';
import '../../resources/resources.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width / 1.5,
      child: Builder(
        builder: (context) {
          return Drawer(
            backgroundColor: AppColors.colorWhite,
            child: ListView(
              children: [
                DrawerHeader(
                  child: Center(
                    child: SvgPicture.asset(Svgs.selimBluee),
                  ),
                ),
                ListTile(
                  title: const Text(
                    'Главная',
                    style: AppConstants.textBlueS14W600,
                  ),
                  onTap: () => context.router.push(const HomeScreenRoute()),
                ),
                ListTile(
                  title: const Text(
                    'Услуги',
                    style: AppConstants.textBlueS14W600,
                  ),
                  onTap: () => context.router.push(const ServicesScreenRoute()),
                ),
                ListTile(
                  title: const Text(
                    'Новости',
                    style: AppConstants.textBlueS14W600,
                  ),
                  onTap: () => context.router.push(const NewsScreenRoute()),
                ),
                ListTile(
                  title: const Text(
                    'Наши работы',
                    style: AppConstants.textBlueS14W600,
                  ),
                  onTap: () => context.router.push(const WorksScreenRoute()),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
