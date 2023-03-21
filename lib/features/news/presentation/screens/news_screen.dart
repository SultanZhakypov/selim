import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:selim/core/routes/routes.gr.dart';
import 'package:selim/features/news/presentation/cubit/news_cubit.dart';
import 'package:selim/features/news/presentation/widgets/custom_appbar.dart';
import 'package:selim/injectable/init_injectable.dart';
import 'package:selim/resources/app_constants.dart';
import 'package:selim/resources/extensions.dart';
import '../../../widgets/footer_widget.dart';
import '../../../widgets/items.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<NewsCubit>()..getNews(),
      child: Scaffold(
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
                sliver: BlocBuilder<NewsCubit, NewsState>(
                  builder: (context, state) {
                    if (state is NewsError) {
                      return SliverToBoxAdapter(
                          child: Center(
                        child: Text(
                          state.error,
                          style: AppConstants.textBlackS14W500,
                        ),
                      ));
                    }
                    if (state is NewsLoading) {
                      return SliverToBoxAdapter(
                        child: Center(
                          child: LoadingAnimationWidget.horizontalRotatingDots(
                              color: Colors.black, size: 50),
                        ),
                      );
                    }
                    if (state is NewsSuccess) {
                      if (state.news.results.isEmpty) {
                        return const SliverToBoxAdapter(
                          child: Center(
                            child: Text(
                              'Пусто',
                              style: AppConstants.textBlackS14W500,
                            ),
                          ),
                        );
                      }
                      return SliverList(
                        delegate: SliverChildBuilderDelegate(
                            childCount: state.news.results.length,
                            (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: GestureDetector(
                              onTap: () => context.router.push(
                                  DetailNewsScreenRoute(
                                      news: state.news.results,
                                      id: state.news.results[index].id)),
                              child: SuggestCard(
                                height: context.height * 0.3,
                                news: state.news.results[index],
                              ),
                            ),
                          );
                        }),
                      );
                    }
                    return const SliverToBoxAdapter(
                      child: SizedBox.shrink(),
                    );
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
