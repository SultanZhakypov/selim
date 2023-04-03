import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:selim/features/home/domain/entities/categories_entity.dart';
import 'package:selim/features/news/presentation/widgets/custom_appbar.dart';
import 'package:selim/features/widgets/footer_widget.dart';
import 'package:selim/resources/app_constants.dart';
import 'package:selim/resources/extensions.dart';
import '../../../../injectable/init_injectable.dart';
import '../../../widgets/items.dart';
import '../cubit/type_detail_categories.dart';

class DetailServiceScreen extends StatelessWidget {
  const DetailServiceScreen({Key? key, required this.category})
      : super(key: key);
  final CategoriesEntity category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) =>
            sl<TypeCategoriesInDetail>()..getCategories(category.category),
        child: SafeArea(
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
              BlocBuilder<TypeCategoriesInDetail, TypeCategoriesState>(
                builder: (context, state) {
                  if (state is TypeCategoriesLoading) {
                    return SliverToBoxAdapter(
                      child: SizedBox(
                        height: context.height * 0.2,
                        child: Center(
                          child: LoadingAnimationWidget.horizontalRotatingDots(
                              color: Colors.black, size: 50),
                        ),
                      ),
                    );
                  }
                  if (state is TypeCategoriesError) {
                    return SliverToBoxAdapter(
                      child: SizedBox(
                        height: context.height * 0.2,
                        child: Center(
                          child: Text(
                            state.error,
                            style: AppConstants.textBlackS14W500,
                          ),
                        ),
                      ),
                    );
                  }
                  if (state is TypeCategoriesSuccess) {
                    return SliverPadding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      sliver: state.categories.isEmpty
                          ? SliverToBoxAdapter(
                              child: SizedBox(
                                height: context.height * 0.2,
                                child: const Center(
                                  child: Text(
                                    'Пусто',
                                    style: AppConstants.textBlackS14W500,
                                  ),
                                ),
                              ),
                            )
                          : SliverList(
                              delegate: SliverChildBuilderDelegate(
                                childCount: state.categories.length,
                                (context, index) => Padding(
                                  padding: const EdgeInsets.only(bottom: 30),
                                  child: SizedBox(
                                    height: context.height * 0.25,
                                    child: ServiceCard(
                                      title: state.categories[index].title,
                                      image:
                                          "http://161.35.29.179:8001${state.categories[index].image}",
                                    ),
                                  ),
                                ),
                              ),
                            ),
                    );
                  }
                  return const SizedBox.shrink();
                },
              ),
              category.categoryAdvantages.isEmpty
                  ? const SliverToBoxAdapter()
                  : const SliverToBoxAdapter(
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
                    String categoryIndex = '${index + 1}';
                    return Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Text(
                          categoryIndex,
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
      ),
    );
  }
}
