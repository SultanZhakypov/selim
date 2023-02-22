import 'package:flutter/material.dart';
import 'package:selim/features/news/presentation/widgets/custom_appbar.dart';
import 'package:selim/resources/app_constants.dart';
import 'package:selim/resources/extensions.dart';
import 'package:selim/resources/resources.dart';

import '../../../home/presentation/widgets/footer_widget.dart';
import '../../../home/presentation/widgets/items.dart';

class DetailNewsScreen extends StatelessWidget {
  const DetailNewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: CustomScrollView(
            physics: const ClampingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: CustomAppbar(
                  textAlign: false,
                  padding: 32,
                  title:
                      'Расширение дизайна ворот стандартной серии RSD01SC BIW'
                          .toUpperCase(),
                  subTitle:
                      'Компания «SelimTrade» сообщает вам о расширении вариантов дизайна гаражных секционных ворот стандартной серии RSD01SC BIW. С 10 марта 2016 года для заказа стали доступны ворота с дизайном панели «доска» в трёх цветовых решениях (RAL 9003, RAL 8014 и «золотой дуб»).',
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Image.asset(Images.image24),
                    Image.asset(Images.image25),
                  ],
                ),
              ),
              const SliverPadding(
                padding: EdgeInsets.only(bottom: 27, top: 51),
                sliver: SliverToBoxAdapter(
                  child: Center(
                    child: Text(
                      'ПОХОЖИЕ НОВОСТИ',
                      style: AppConstants.textBlackS16W700,
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: context.height / 4.3,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => const SuggestItem(
                      textOnCenter: true,
                      noText: false,
                    ),
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 15),
                    itemCount: 5,
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
