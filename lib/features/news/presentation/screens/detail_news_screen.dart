import 'package:flutter/material.dart';
import 'package:selim/features/news/presentation/widgets/custom_appbar.dart';
import 'package:selim/features/widgets/app_drawer.dart';
import 'package:selim/resources/app_constants.dart';
import 'package:selim/resources/extensions.dart';
import 'package:selim/resources/resources.dart';

import '../../../widgets/footer_widget.dart';
import '../../../widgets/items.dart';

class DetailNewsScreen extends StatefulWidget {
  const DetailNewsScreen({super.key});

  @override
  State<DetailNewsScreen> createState() => _DetailNewsScreenState();
}

class _DetailNewsScreenState extends State<DetailNewsScreen> {
  final drawerKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: drawerKey,
      endDrawer: const AppDrawer(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: CustomScrollView(
            physics: const ClampingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: Appbar1(
                  drawerkey: drawerKey,
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
                    itemBuilder: (context, index) => const SuggestCard(
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
