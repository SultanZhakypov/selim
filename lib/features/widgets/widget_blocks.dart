import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:selim/core/routes/routes.dart';
import 'package:selim/features/home/presentation/bloc/home_bloc.dart';

import 'package:selim/features/home/presentation/widgets/buttons.dart';
import 'package:selim/features/home/presentation/widgets/constants.dart';
import 'package:selim/features/widgets/items.dart';
import 'package:selim/resources/extensions.dart';
import 'package:selim/resources/resources.dart';

import '../../resources/app_constants.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  final GlobalKey<PopupMenuButtonState<int>> _menuKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 28, left: 16, right: 16),
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(Svgs.selimG),
                    InkWell(
                        onTap: () {
                          _menuKey.currentState!.showButtonMenu();
                          openPopUpMenu(context);
                        },
                        child: SvgPicture.asset(Svgs.menu))
                  ],
                ),
                SizedBox(
                  height: context.height / 18,
                ),
                Text(
                  'Современная  и надёжная защита'.toUpperCase(),
                  style: AppConstants.textWhiteS25W700,
                  softWrap: true,
                ),
                const SizedBox(height: 10),
                const Text(
                  'Найдите идеальный вариант сами  или предоставьте это нам',
                  style: AppConstants.textWhiteS14W600,
                  softWrap: true,
                ),
                const SizedBox(height: 25),
                SizedBox(
                  width: context.width / 1.8,
                  child: Builder(builder: (context) {
                    return AppButton(
                      onPress: () {},
                      title: 'заказать ворота',
                      isVisibleIcon: true,
                    );
                  }),
                ),
              ],
            ),
            success: (mainInfo) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(Svgs.selimG),
                    SvgPicture.asset(Svgs.menu)
                  ],
                ),
                SizedBox(
                  height: context.height / 18,
                ),
                Text(
                  mainInfo!.title.toUpperCase(),
                  style: AppConstants.textWhiteS25W700,
                  softWrap: true,
                ),
                const SizedBox(height: 10),
                Text(
                  mainInfo.subtitle,
                  style: AppConstants.textWhiteS14W600,
                  softWrap: true,
                ),
                const SizedBox(height: 25),
                SizedBox(
                  width: context.width / 1.8,
                  child: Builder(
                    builder: (context) {
                      return AppButton(
                        onPress: () {},
                        title: 'заказать ворота',
                        isVisibleIcon: true,
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  PopupMenuButton openPopUpMenu(BuildContext context) {
    return PopupMenuButton(
      key: _menuKey,
      onSelected: (value) {
        switch (value) {
          case 1:
            context.router.push(const HomeScreenRoute());
            break;
          case 2:
            context.router.push(const ServicesScreenRoute());
            break;
          case 3:
            context.router.push(const NewsScreenRoute());
            break;
          case 4:
            context.router.push(const WorksScreenRoute());
            break;
          default:
        }
      },
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 1,
          child: Row(
            children: [
              const Text('Главная'),
              SvgPicture.asset(Svgs.selimBluee),
            ],
          ),
        ),
        const PopupMenuItem(
          value: 2,
          child: Text('Услуги'),
        ),
        const PopupMenuItem(
          value: 3,
          child: Text('Новости'),
        ),
        const PopupMenuItem(
          value: 4,
          child: Text('Наши работы'),
        ),
      ],
    );
  }
}

class MainInfoWidget extends StatelessWidget {
  const MainInfoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Кто такие Selim trade?',
            style: AppConstants.textBlackS16W700,
          ),
          const SizedBox(height: 10),
          Container(
            height: context.height / 4,
            width: context.width / 1.2,
            decoration: BoxDecoration(
              color: AppColors.colorWhite,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Мы являемся официальным представителем DOORHAN.',
                    style: AppConstants.textBlackS14W300,
                    softWrap: true,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Производственно — монтажная компания Selim trade основана в 2003 году.',
                      style: AppConstants.textBlackS14W300,
                      softWrap: true,
                    ),
                  ),
                  Text(
                    'Основа нашей деятельности — это продажа и монтаж: ворот, рольставней, шлагбаумов, рол штор, жалюзи и многое другое.',
                    style: AppConstants.textBlackS14W300,
                    softWrap: true,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SuggestWidget extends StatefulWidget {
  const SuggestWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<SuggestWidget> createState() => _SuggestWidgetState();
}

class _SuggestWidgetState extends State<SuggestWidget> {
  late PageController pageController;

  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        height: context.height * 0.4,
        child: Column(
          children: [
            const Center(
              child: Text(
                'Мы предлагаем',
                style: AppConstants.textBlackS16W700,
              ),
            ),
            const SizedBox(height: 15),
            Expanded(
              child: PageView.builder(
                controller: pageController,
                itemCount: 5,
                itemBuilder: (context, index) => const Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: SuggestCard(
                      noText: false,
                      textOnCenter: false,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AppArrowButton(
                    onPress: () => pageController.previousPage(
                      duration: const Duration(seconds: 1),
                      curve: Curves.ease,
                    ),
                    icon: Icons.arrow_back_ios,
                  ),
                  ElevatedButton(
                    onPressed: () {},
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
                    child: InkWell(
                      onTap: () =>
                          context.router.push(const ServicesScreenRoute()),
                      child: const Text(
                        'смотреть все',
                        style: AppConstants.textWhiteInterS12W400,
                      ),
                    ),
                  ),
                  AppArrowButton(
                    onPress: () => pageController.nextPage(
                        duration: const Duration(seconds: 1),
                        curve: Curves.ease),
                    icon: Icons.arrow_forward_ios,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AdvantageOrService extends StatelessWidget {
  const AdvantageOrService({
    Key? key,
    required this.title,
    required this.isService,
  }) : super(key: key);

  final String title;
  final bool isService;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * 0.3,
      child: Column(
        children: [
          const SizedBox(height: 32),
          Center(
            child: Text(
              title,
              style: AppConstants.textBlackS16W700,
            ),
          ),
          const SizedBox(height: 15),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => AdvantageCard(
                svg: isService
                    ? AppText.svgsServices[index]
                    : AppText.svgs[index],
                title: isService
                    ? AppText.services[index]
                    : AppText.advantages[index],
              ),
              separatorBuilder: (context, index) => const SizedBox(width: 10),
              itemCount:
                  isService ? AppText.svgsServices.length : AppText.svgs.length,
            ),
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}

class NewsWidget extends StatelessWidget {
  const NewsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * 0.4,
      child: Column(
        children: [
          const Center(
            child: Text(
              'Последние новости',
              style: AppConstants.textBlackS16W700,
            ),
          ),
          const SizedBox(height: 15),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => SizedBox(
                width: context.width * 0.6,
                child: const SuggestCard(
                  textOnCenter: true,
                  noText: false,
                ),
              ),
              separatorBuilder: (context, index) => const SizedBox(
                width: 20,
              ),
              itemCount: 5,
            ),
          ),
          const SizedBox(height: 15),
          ElevatedButton(
            onPressed: () {},
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
            child: InkWell(
              onTap: () => context.router.push(const NewsScreenRoute()),
              child: const Text(
                'все новости',
                style: AppConstants.textWhiteInterS12W400,
              ),
            ),
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}

class UsWorkWidget extends StatelessWidget {
  const UsWorkWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * 0.35,
      child: Column(
        children: const [
          Center(
            child: Text(
              'Наши работы',
              style: AppConstants.textBlackS16W700,
            ),
          ),
          SizedBox(height: 15),
          Expanded(
            child: WorkCard(),
          ),
        ],
      ),
    );
  }
}

class FeedBackWidget extends StatefulWidget {
  const FeedBackWidget({super.key});

  @override
  State<FeedBackWidget> createState() => _FeedBackWidgetState();
}

class _FeedBackWidgetState extends State<FeedBackWidget> {
  late PageController pageController;

  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * 0.4,
      child: Column(
        children: [
          const Center(
            child: Text(
              'Отзывы наших клиентов',
              style: AppConstants.textBlackS16W700,
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: PageView.builder(
              controller: pageController,
              itemCount: 5,
              itemBuilder: (context, index) {
                return const Center(child: ClientCard());
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AppArrowButton(
                  onPress: () => pageController.previousPage(
                    duration: const Duration(seconds: 1),
                    curve: Curves.ease,
                  ),
                  icon: Icons.arrow_back_ios,
                ),
                AppArrowButton(
                  onPress: () => pageController.nextPage(
                      duration: const Duration(seconds: 1), curve: Curves.ease),
                  icon: Icons.arrow_forward_ios,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
