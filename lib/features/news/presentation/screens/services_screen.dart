import 'package:flutter/material.dart';
import 'package:selim/features/home/presentation/widgets/footer_widget.dart';
import 'package:selim/features/home/presentation/widgets/items.dart';
import 'package:selim/features/news/presentation/widgets/custom_appbar.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

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
                child: CustomAppbar(),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  childCount: 5,
                  (context, index) => const Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: SuggestItem(textOnCenter: false),
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
