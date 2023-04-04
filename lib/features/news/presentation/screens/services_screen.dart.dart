import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:selim/core/routes/routes.gr.dart';
import 'package:selim/cubits/categories_cubit.dart';
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
    return BlocProvider.value(
      value: sl<CategoriesCubit>()..getCategories(),
      child: Scaffold(
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              const SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                sliver: SliverToBoxAdapter(
                  child: Appbar1(
                      title: 'НАШИ УСЛУГИ',
                      subTitle:
                          'Наши сотрудники прошли сертифицированные тренинги в Учебных центрах ГК DoorHan в г. Москва, г. Алматы, г. Астаны а так же успешно сдали экзамены и являются обладателями сертификатов по направлениям «Воротные системы, ролл ставни, ролл ворота, автоматические системы», «Монтаж автоматики».'),
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                sliver: BlocBuilder<CategoriesCubit, CategoriesState>(
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
                      return state.categories.isEmpty
                          ? const SliverToBoxAdapter(
                              child: Center(
                                child: Text(
                                  'Пусто',
                                  style: AppConstants.textBlackS14W500,
                                ),
                              ),
                            )
                          : SliverList(
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
                                      padding:
                                          const EdgeInsets.only(bottom: 30),
                                      child: ServiceCard(
                                        image: state.categories[index].image,
                                        title: state.categories[index].title,
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
