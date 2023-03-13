import 'package:flutter/material.dart';
import 'package:selim/features/news/presentation/widgets/custom_appbar.dart';

import '../../../widgets/footer_widget.dart';
import '../../../widgets/items.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

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
                  title: 'НОВОСТИ КОМПАНИИ',
                  subTitle:
                      'К вашему вниманию Здесь мы собрали все актуальные новости нашей компании',
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  childCount: 5,
                  (context, index) => const Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: SuggestCard(
                      textOnCenter: true,
                      noText: false,
                    ),
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
