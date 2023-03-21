import 'package:flutter/material.dart';

import 'package:selim/features/home/domain/entities/categories_entity.dart';
import 'package:selim/features/news/presentation/widgets/custom_appbar.dart';
import 'package:selim/features/widgets/footer_widget.dart';
import 'package:selim/resources/app_constants.dart';

class DetailServiceScreen extends StatelessWidget {
  const DetailServiceScreen({Key? key, required this.category})
      : super(key: key);
  final CategoriesEntity category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: AppBar2(
                image: category.image,
                title: category.title,
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, bottom: 55, top: 22),
              sliver: SliverToBoxAdapter(
                child: Text(
                  category.description,
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

            //TODO
            // SliverPadding(
            //   padding: const EdgeInsets.symmetric(horizontal: 20),
            //   sliver: SliverList(
            //     delegate: SliverChildBuilderDelegate(
            //       childCount: 5,
            //       (context, index) => Padding(
            //         padding: const EdgeInsets.only(bottom: 30),
            //         child: CategoryTypes(
            //           image: category.category,
            //           title: category.title,
            //           height: context.height * 0.2,
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
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
                    childCount: category.categoryAdvantages.length,
                    (context, index) {
                  int categoryIndex = index + 1;
                  return Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Text(
                        categoryIndex.toString(),
                        style: AppConstants.textWhiteS229W800,
                      ),
                      Column(
                        children: [
                          Text(
                            category.categoryAdvantages[index].title,
                            style: AppConstants.textBlackS20W600,
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            category.categoryAdvantages[index].text,
                            style: AppConstants.textBlackS14W300
                                .copyWith(height: 1.5),
                          ),
                        ],
                      ),
                    ],
                  );
                }),
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
