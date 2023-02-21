import 'package:flutter/material.dart';

import 'package:selim/features/news/presentation/widgets/custom_appbar.dart';
import 'package:selim/resources/app_constants.dart';

import '../../../home/presentation/widgets/footer_widget.dart';
import '../../../home/presentation/widgets/items.dart';

class WorksScreen extends StatefulWidget {
  const WorksScreen({super.key});

  @override
  State<WorksScreen> createState() => _WorksScreenState();
}

class _WorksScreenState extends State<WorksScreen> {
  List items = ['все', 'автоматика', 'ворота'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: CustomScrollView(
            physics: const ClampingScrollPhysics(),
            slivers: [
              const SliverToBoxAdapter(
                child: CustomAppbar(
                  title: 'НАШИ РАБОТЫ',
                  subTitle:
                      'Здесь мы собрали наши лучшие проекты, чтобы вы могли вдохновиться идеями для собственного проекта. Вы найдёте проект по душе и нраву, который захотите воплотить в жизнь.',
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 32,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => WorkButtonItem(
                      title: items[index],
                      onPress: () {},
                    ),
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 15),
                    itemCount: items.length,
                  ),
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(height: 20),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  childCount: 5,
                  (context, index) => const Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: SuggestItem(
                      textOnCenter: false,
                      noText: true,
                    ),
                  ),
                ),
              ),
              const SliverToBoxAdapter(
                child: FooterWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WorkButtonItem extends StatelessWidget {
  const WorkButtonItem({
    Key? key,
    required this.title,
    required this.onPress,
  }) : super(key: key);
  final String title;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        backgroundColor: Colors.transparent,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(
            width: 1,
            color: AppColors.colorBlue,
          ),
        ),
      ),
      onPressed: onPress,
      child: Text(title, style: AppConstants.textBlackS14W300),
    );
  }
}
