import 'package:flutter/material.dart';
import 'package:selim/features/news/presentation/widgets/custom_appbar.dart';
import 'package:selim/features/widgets/footer_widget.dart';
import 'package:selim/features/widgets/parallax_effect.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              sliver: SliverToBoxAdapter(
                child: Appbar1(
                    textAlign: false,
                    title: 'НАШИ УСЛУГИ',
                    subTitle:
                        'Здесь мы собрали наши лучшие проекты, чтобы вы могли вдохновиться идеями для собственного проекта. Вы найдёте проект по душе и нраву, который захотите воплотить в жизнь.'),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  childCount: 3,
                  (context, index) => LocationListItem(
                    imageUrl:
                        'https://docs.flutter.dev/cookbook/img-files/effects/parallax/01-mount-rushmore.jpg',
                    name: 'Автоматика',
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
