import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:selim/core/routes/routes.gr.dart';
import 'package:selim/features/home/presentation/cubit/categories_cubit.dart';
import 'package:selim/features/news/presentation/widgets/custom_appbar.dart';
import 'package:selim/features/widgets/footer_widget.dart';
import 'package:selim/resources/extensions.dart';
import '../../../../injectable/init_injectable.dart';
import '../../../../resources/app_constants.dart';
import '../../../widgets/items.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<CategoriesCubit>()..getCategories(),
      child: Scaffold(
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
              BlocBuilder<CategoriesCubit, CategoriesState>(
                builder: (context, state) {
                  if (state is CategoriesError) {
                    return SliverToBoxAdapter(
                      child: Center(
                        child: Text(
                          state.error,
                          style: AppConstants.textBlackS14W500,
                        ),
                      ),
                    );
                  }
                  if (state is CategoriesLoading) {
                    return SliverToBoxAdapter(
                      child: Center(
                        child: LoadingAnimationWidget.horizontalRotatingDots(
                            color: Colors.black, size: 50),
                      ),
                    );
                  }
                  if (state is CategoriesSuccess) {
                    if (state.categories.isEmpty) {
                      return const SliverToBoxAdapter(
                        child: Center(
                          child: Text(
                            'Пусто',
                            style: AppConstants.textBlackS14W500,
                          ),
                        ),
                      );
                    }
                    return SliverPadding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      sliver: SliverList(
                        delegate: SliverChildBuilderDelegate(
                          childCount: state.categories.length,
                          (context, index) => SizedBox(
                            height: context.height * 0.30,
                            child: GestureDetector(
                              onTap: () => context.router.push(
                                DetailServiceScreenRoute(
                                  category: state.categories[index],
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 30),
                                child: ServiceCard(
                                  category: state.categories[index],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }
                  return const SliverToBoxAdapter(
                    child: SizedBox.shrink(),
                  );
                },
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
