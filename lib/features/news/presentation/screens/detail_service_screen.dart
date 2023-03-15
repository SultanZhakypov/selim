import 'package:flutter/material.dart';
import 'package:selim/features/widgets/footer_widget.dart';
import 'package:selim/features/news/presentation/widgets/custom_appbar.dart';
import 'package:selim/resources/app_constants.dart';
import 'package:selim/resources/extensions.dart';

import '../../../widgets/items.dart';

class DetailServiceScreen extends StatelessWidget {
  const DetailServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: AppBar2(),
            ),
            const SliverPadding(
              padding:
                  EdgeInsets.only(left: 20, right: 20, bottom: 55, top: 22),
              sliver: SliverToBoxAdapter(
                child: Text(
                  'Промышленные секционные ворота DoorHan устанавливаются в проёмы производственных зданий, складских помещений, цехов, терминалов и прочих промышленных объектов, где они должны отвечать гораздо более жёстким требованиям, в отличие от гаражных ворот. Так как промышленные ворота эксплуатируются с высокой интенсивностью, для обеспечения долгосрочной работы без сбоев, они обладают повышенной износостойкостью за счёт применения специальных технологий. Используемая в воротах система уплотнителей обеспечивает высокую термоизоляцию — сохранение требуемого температурного режима является важной задачей практически для любого промышленного объекта.',
                  style: AppConstants.textBlackS14W300,
                  softWrap: true,
                ),
              ),
            ),
            const SliverPadding(
              padding: EdgeInsets.only(left: 20, bottom: 10),
              sliver: SliverToBoxAdapter(
                child: Text(
                  'ТИПЫ ВОРОТ',
                  style: AppConstants.textBlackS16W700,
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  childCount: 5,
                  (context, index) => Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: SuggestCard(
                      height: context.height * 0.2,
                    ),
                  ),
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(top: 15),
                child: Center(
                    child: Text(
                  'ОСНОВНЫЕ ПРЕИМУЩЕСТВА',
                  style: AppConstants.textBlackS16W700,
                )),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  childCount: 5,
                  (context, index) => Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      const Text(
                        '1',
                        style: AppConstants.textWhiteS229W800,
                      ),
                      Column(
                        children: [
                          const Text(
                            'ПРОМЫШЛЕННЫЙ МАСШТАБ',
                            style: AppConstants.textBlackS20W600,
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Данная серия ворот спроектирована специально для перекрытия больших проёмов на промышленных объектах.',
                            style: AppConstants.textBlackS14W300
                                .copyWith(height: 1.5),
                          ),
                        ],
                      ),
                    ],
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
