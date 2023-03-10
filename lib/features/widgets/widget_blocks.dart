import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:selim/core/routes/routes.dart';

import 'package:selim/features/home/presentation/widgets/buttons.dart';
import 'package:selim/features/home/presentation/widgets/constants.dart';
import 'package:selim/features/widgets/items.dart';
import 'package:selim/resources/extensions.dart';
import 'package:selim/resources/resources.dart';

import '../../resources/app_constants.dart';

class FirstWidget extends StatelessWidget {
  const FirstWidget({
    Key? key,
    required this.drawerKey,
  }) : super(key: key);
  final GlobalKey<ScaffoldState> drawerKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height / 2.2,
      width: context.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Images.first),
          fit: BoxFit.fill,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(Svgs.selimG),
                InkWell(
                    onTap: () => drawerKey.currentState!.openEndDrawer(),
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
      ),
    );
  }
}

class SecondWidget extends StatelessWidget {
  const SecondWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height / 2.8,
      width: context.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Images.second),
          fit: BoxFit.fill,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 16),
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
      ),
    );
  }
}

class ThirdWidget extends StatefulWidget {
  const ThirdWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<ThirdWidget> createState() => _ThirdWidgetState();
}

class _ThirdWidgetState extends State<ThirdWidget> {
  late PageController pageController;

  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height / 2.8,
      width: context.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Images.third),
          fit: BoxFit.fill,
        ),
      ),
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
                child: SuggestCard(
                  noText: false,
                  textOnCenter: false,
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

class FourthWidget extends StatelessWidget {
  const FourthWidget({
    Key? key,
    required this.title,
    required this.isService,
  }) : super(key: key);

  final String title;
  final bool isService;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height / 3.3,
      width: context.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Images.fourth),
          fit: BoxFit.fill,
        ),
      ),
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

class FifthWidget extends StatelessWidget {
  const FifthWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height / 2.8,
      width: context.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Images.fifth),
          fit: BoxFit.fill,
        ),
      ),
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
                width: context.width / 1.9,
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

class SixthWidget extends StatelessWidget {
  const SixthWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height / 3,
      width: context.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Images.fifth),
          fit: BoxFit.fill,
        ),
      ),
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

class SeventhWidget extends StatefulWidget {
  const SeventhWidget({super.key});

  @override
  State<SeventhWidget> createState() => _SeventhWidgetState();
}

class _SeventhWidgetState extends State<SeventhWidget> {
  late PageController pageController;

  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height / 3,
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
