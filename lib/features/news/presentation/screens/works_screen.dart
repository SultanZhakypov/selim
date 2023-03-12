import 'package:flutter/material.dart';
import 'package:selim/features/news/presentation/widgets/custom_appbar.dart';
import '../../../widgets/footer_widget.dart';
import '../../../widgets/items.dart';

class WorksScreen extends StatelessWidget {
  const WorksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          physics: const ClampingScrollPhysics(),
          slivers: [
            const SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              sliver: SliverToBoxAdapter(
                child: Appbar1(
                  title: 'НАШИ РАБОТЫ',
                  subTitle:
                      'Здесь мы собрали наши лучшие проекты, чтобы вы могли вдохновиться идеями для собственного проекта. Вы найдёте проект по душе и нраву, который захотите воплотить в жизнь.',
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
                  padding: EdgeInsets.only(bottom: 20, left: 16, right: 16),
                  child: SuggestCard(
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
    );
  }
}
