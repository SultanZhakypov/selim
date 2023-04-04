import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:selim/core/routes/routes.dart';
import 'package:selim/features/home/presentation/cubit/about_us_cubit.dart';
import 'package:selim/cubits/categories_cubit.dart';
import 'package:selim/cubits/product_cubit.dart';
import 'package:selim/features/home/presentation/widgets/buttons.dart';
import 'package:selim/features/widgets/app_shows.dart';
import 'package:selim/features/widgets/items.dart';
import 'package:selim/resources/extensions.dart';
import 'package:selim/resources/resources.dart';
import '../../../../resources/app_constants.dart';
import '../../../news/presentation/cubit/advantage_cubit.dart';
import '../../../news/presentation/cubit/news_cubit.dart';
import '../cubit/main_info_cubit.dart';
import '../cubit/review_cubit.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key, required this.controller}) : super(key: key);
  final ScrollController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 28, left: 16, right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(Svgs.selimG),
              GestureDetector(
                  onTap: () => AppShows.openPopUpMenu(context),
                  child: SvgPicture.asset(Svgs.menu))
            ],
          ),
          SizedBox(height: context.height / 18),
          BlocBuilder<MainInfoCubit, MainInfoState>(
            builder: (context, state) {
              if (state is MainInfoSuccess) {
                return Column(
                  children: [
                    Text(
                      state.mainInfo.title.toUpperCase(),
                      style: AppConstants.textWhiteS25W700,
                      softWrap: true,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      state.mainInfo.subtitle,
                      style: AppConstants.textWhiteS14W600,
                      softWrap: true,
                    ),
                  ],
                );
              }

              if (state is MainInfoLoading) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 27),
                  child: Center(
                    child: LoadingAnimationWidget.horizontalRotatingDots(
                      color: Colors.white,
                      size: 50,
                    ),
                  ),
                );
              }
              if (state is MainInfoError) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 49),
                  child: Center(
                    child:
                        Text(state.error, style: AppConstants.textWhiteS14W600),
                  ),
                );
              }
              return const SizedBox.shrink();
            },
          ),
          const SizedBox(height: 25),
          SizedBox(
            width: context.width * 0.55,
            child: AppButton(
              onPress: () => controller.animateTo(2500,
                  duration: const Duration(milliseconds: 2000),
                  curve: Curves.easeInOutExpo),
              title: 'заказать ворота',
              isVisibleIcon: true,
            ),
          ),
        ],
      ),
    );
  }
}

class AboutUSWidget extends StatelessWidget {
  const AboutUSWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: BlocBuilder<AboutUsCubit, AboutUsState>(
        builder: (context, state) {
          if (state is AboutUsLoading) {
            return SizedBox(
              height: context.height * 0.3,
              child: Center(
                child: LoadingAnimationWidget.horizontalRotatingDots(
                  color: Colors.black,
                  size: 50,
                ),
              ),
            );
          }

          if (state is AboutUsSuccess) {
            return SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    state.aboutUs.title,
                    style: AppConstants.textBlackS16W700,
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: context.width * 0.7,
                    decoration: BoxDecoration(
                      color: AppColors.colorWhite,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 3),
                      child: Text(
                        state.aboutUs.text,
                        style: AppConstants.textBlackS14W300,
                        softWrap: true,
                      ),
                    ),
                  ),
                ],
              ),
            );
          }

          if (state is AboutUsError) {
            return SizedBox(
              height: context.height * 0.3,
              child: Center(
                child: Text(state.error, style: AppConstants.textBlackS14W600),
              ),
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}

class SuggestWidget extends StatefulWidget {
  const SuggestWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<SuggestWidget> createState() => _SuggestWidgetState();
}

class _SuggestWidgetState extends State<SuggestWidget> {
  late PageController pageController;

  @override
  void initState() {
    pageController = PageController(viewportFraction: 0.8);
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Center(
          child: Text(
            'Мы предлагаем',
            style: AppConstants.textBlackS16W700,
          ),
        ),
        const SizedBox(height: 15),
        BlocBuilder<CategoriesCubit, CategoriesState>(
          builder: (context, state) {
            if (state is CategoriesError) {
              return Center(
                child: Text(
                  state.error,
                  style: AppConstants.textBlackS14W500,
                ),
              );
            }
            if (state is CategoriesLoading) {
              return Center(
                child: LoadingAnimationWidget.horizontalRotatingDots(
                    color: Colors.black, size: 50),
              );
            }
            if (state is CategoriesSuccess) {
              return Column(
                children: [
                  SizedBox(
                    height: context.height * 0.25,
                    child: PageView.builder(
                      controller: pageController,
                      itemCount: state.categories.length,
                      itemBuilder: (context, index) => InkWell(
                        onTap: () => context.router.push(
                          DetailServiceScreenRoute(
                              category: state.categories[index]),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: ServiceCard(
                            image: state.categories[index].image,
                            title: state.categories[index].title,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 13),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        AppArrowButton(
                          onPress: () => pageController.previousPage(
                            duration: const Duration(seconds: 1),
                            curve: Curves.ease,
                          ),
                          icon: Icons.arrow_back_ios,
                        ),
                        AppButton2(
                            onPress: () => context.router
                                .push(const ServicesScreenRoute()),
                            title: 'смотреть все'),
                        AppArrowButton(
                          onPress: () => pageController.nextPage(
                              duration: const Duration(seconds: 1),
                              curve: Curves.ease),
                          icon: Icons.arrow_forward_ios,
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }
            return const SizedBox.shrink();
          },
        ),
      ],
    );
  }
}

class AdvantageOrService extends StatelessWidget {
  const AdvantageOrService({
    Key? key,
    required this.title,
    required this.isService,
  }) : super(key: key);

  final String title;
  final bool isService;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * 0.3,
      child: Column(
        children: [
          const SizedBox(height: 32),
          Center(
            child: Text(
              title,
              style: AppConstants.textBlackS16W700,
            ),
          ),
          const SizedBox(height: 15),
          BlocBuilder<AdvantageOrServiceCubit, AdvantageOrServiceState>(
            builder: (context, state) {
              if (state is AdvantageError) {
                return Expanded(
                  child: Center(
                    child: Text(
                      state.error,
                      style: AppConstants.textBlackS14W500,
                    ),
                  ),
                );
              }
              if (state is AdvantageSuccess) {
                return Expanded(
                  child: ListView.separated(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => AdvantageCard(
                      image: isService
                          ? state.services[index].image
                          : state.advantages[index].image,
                      title: isService
                          ? state.services[index].text
                          : state.advantages[index].text,
                    ),
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 10),
                    itemCount: isService
                        ? state.services.length
                        : state.advantages.length,
                  ),
                );
              }
              return const SizedBox.shrink();
            },
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}

class NewsWidget extends StatelessWidget {
  const NewsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Center(
          child: Text(
            'Последние новости',
            style: AppConstants.textBlackS16W700,
          ),
        ),
        const SizedBox(height: 15),
        BlocBuilder<NewsCubit, NewsState>(
          builder: (context, state) {
            if (state is NewsError) {
              return Center(
                child: Text(
                  state.error,
                  style: AppConstants.textBlackS14W500,
                ),
              );
            }
            if (state is NewsSuccess) {
              if (state.isLoading) {
                return LoadingAnimationWidget.horizontalRotatingDots(
                    color: Colors.black, size: 50);
              }
              if (state.news.isEmpty) {
                return SizedBox(
                  height: context.height * 0.25,
                  child: const Center(
                    child: Text(
                      'Пусто',
                      style: AppConstants.textBlackS14W500,
                    ),
                  ),
                );
              }
              if (state.news.length == 1) {
                return SizedBox(
                  height: context.height * 0.25,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: SizedBox(
                      width: context.width * 0.6,
                      child: GestureDetector(
                        onTap: () => context.router.push(
                          DetailNewsScreenRoute(
                            id: state.news[0].id,
                            news: state.news,
                          ),
                        ),
                        child: SuggestCard(
                          height: context.height * 0.2,
                          news: state.news[0],
                        ),
                      ),
                    ),
                  ),
                );
              }

              return SizedBox(
                height: context.height * 0.25,
                child: ListView.separated(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  scrollDirection: Axis.horizontal,
                  itemCount: state.news.length,
                  itemBuilder: (context, index) => SizedBox(
                    width: context.width * 0.7,
                    child: GestureDetector(
                      onTap: () => context.router.push(
                        DetailNewsScreenRoute(
                          id: state.news[index].id,
                          news: state.news,
                        ),
                      ),
                      child: SuggestCard(
                        height: context.height * 0.2,
                        news: state.news[index],
                      ),
                    ),
                  ),
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 20,
                  ),
                ),
              );
            }

            return const SizedBox.shrink();
          },
        ),
        const SizedBox(height: 15),
        AppButton2(
          onPress: () => context.router.push(const NewsScreenRoute()),
          title: 'все новости',
        ),
        const SizedBox(height: 32),
      ],
    );
  }
}

class UsWorkWidget extends StatelessWidget {
  const UsWorkWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Center(
          child: Text(
            'Наши работы',
            style: AppConstants.textBlackS16W700,
          ),
        ),
        const SizedBox(height: 15),
        BlocBuilder<ProductCubit, ProductState>(
          builder: (context, state) {
            if (state is ProductError) {
              return SizedBox(
                height: context.height * 0.28,
                child: Center(
                  child: Text(
                    state.error,
                    style: AppConstants.textBlackS14W500,
                  ),
                ),
              );
            }
            if (state is ProductLoading) {
              return SizedBox(
                height: context.height * 0.28,
                child: Center(
                  child: LoadingAnimationWidget.horizontalRotatingDots(
                      color: Colors.black, size: 50),
                ),
              );
            }
            if (state is ProductSuccess) {
              if (state.product.isEmpty) {
                return SizedBox(
                  height: context.height * 0.28,
                  child: const Center(
                    child: Text(
                      'Пусто',
                      style: AppConstants.textBlackS14W500,
                    ),
                  ),
                );
              }
              return SizedBox(
                height: context.height * 0.28,
                child: WorkImages(state: state),
              );
            }
            return const SizedBox.shrink();
          },
        ),
      ],
    );
  }
}

class FeedBackWidget extends StatefulWidget {
  const FeedBackWidget({super.key});

  @override
  State<FeedBackWidget> createState() => _FeedBackWidgetState();
}

class _FeedBackWidgetState extends State<FeedBackWidget> {
  late PageController pageController;

  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Center(
          child: Text(
            'Отзывы наших клиентов',
            style: AppConstants.textBlackS16W700,
          ),
        ),
        const SizedBox(height: 20),
        BlocBuilder<ReviewCubit, ReviewState>(
          builder: (context, state) {
            if (state is ReviewError) {
              return SizedBox(
                height: context.height * 0.4,
                child: Center(
                  child: Text(
                    state.error,
                    style: AppConstants.textBlackS14W500,
                  ),
                ),
              );
            }
            if (state is ReviewLoading) {
              return SizedBox(
                height: context.height * 0.4,
                child: Center(
                  child: LoadingAnimationWidget.horizontalRotatingDots(
                      color: Colors.black, size: 50),
                ),
              );
            }
            if (state is ReviewSuccess) {
              return SizedBox(
                height: context.height * 0.25,
                child: PageView.builder(
                  controller: pageController,
                  itemCount: state.review.length,
                  itemBuilder: (context, index) {
                    return Center(
                      child: ClientCard(
                        review: state.review[index],
                      ),
                    );
                  },
                ),
              );
            }
            return const SizedBox.shrink();
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AppArrowButton(
                onPress: () => pageController.previousPage(
                  duration: const Duration(seconds: 1),
                  curve: Curves.ease,
                ),
                icon: Icons.arrow_back_ios,
              ),
              AppArrowButton(
                onPress: () => pageController.nextPage(
                    duration: const Duration(seconds: 1), curve: Curves.ease),
                icon: Icons.arrow_forward_ios,
              ),
            ],
          ),
        )
      ],
    );
  }
}
