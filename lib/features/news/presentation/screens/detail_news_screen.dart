import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:selim/core/routes/routes.dart';
import 'package:selim/features/news/presentation/cubit/detail_news.dart';
import 'package:selim/features/news/presentation/widgets/custom_appbar.dart';
import 'package:selim/resources/app_constants.dart';
import 'package:selim/resources/extensions.dart';
import '../../../../injectable/init_injectable.dart';
import '../../../widgets/footer_widget.dart';
import '../../../widgets/items.dart';
import '../../data/models/news/news_model.dart';

class DetailNewsScreen extends StatelessWidget {
  const DetailNewsScreen({
    Key? key,
    required this.id,
    required this.news,
  }) : super(key: key);

  final int id;
  final List<Result> news;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<NewsDetailCubit>()..getDetailNews(id),
      child: Scaffold(
        body: SafeArea(
          bottom: false,
          child: BlocBuilder<NewsDetailCubit, NewsDetailState>(
            builder: (context, state) {
              if (state is NewsDetailError) {
                return Center(
                  child: Text(
                    state.error,
                    style: AppConstants.textBlackS14W500,
                  ),
                );
              }

              if (state is NewsDetailLoading) {
                return Center(
                  child: LoadingAnimationWidget.horizontalRotatingDots(
                      color: Colors.black, size: 50),
                );
              }

              if (state is NewsDetailSuccess) {
                return CustomScrollView(
                  physics: const ClampingScrollPhysics(),
                  slivers: [
                    SliverPadding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      sliver: SliverToBoxAdapter(
                        child: Appbar1(
                          textAlign: false,
                          padding: 32,
                          title: state.news.title.toUpperCase(),
                          subTitle: state.news.text,
                        ),
                      ),
                    ),
                    SliverPadding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      sliver: SliverList(
                        delegate: SliverChildListDelegate(
                          [
                            state.news.newsImages.isEmpty
                                ? const SizedBox.shrink()
                                : ListView.separated(
                                    shrinkWrap: true,
                                    itemBuilder: (context, index) =>
                                        CachedNetworkImage(
                                      progressIndicatorBuilder:
                                          (context, url, progress) => Center(
                                        child: LoadingAnimationWidget
                                            .horizontalRotatingDots(
                                          color: Colors.black,
                                          size: 50,
                                        ),
                                      ),
                                      imageUrl:
                                          state.news.newsImages[index].image,
                                      fit: BoxFit.fill,
                                    ),
                                    separatorBuilder: (context, index) =>
                                        const SizedBox(height: 20),
                                    itemCount: state.news.newsImages.length,
                                  ),
                          ],
                        ),
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
                    SliverPadding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      sliver: SliverToBoxAdapter(
                        child: SizedBox(
                          height: context.height * 0.25,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemCount: news.length,
                            itemBuilder: (context, index) => SizedBox(
                              width: context.width * 0.8,
                              child: GestureDetector(
                                onTap: () => context.router.push(
                                  DetailNewsScreenRoute(
                                    id: news[index].id,
                                    news: news,
                                  ),
                                ),
                                child: NewsImagesCard(news: news[index]),
                              ),
                            ),
                            separatorBuilder: (context, index) =>
                                const SizedBox(width: 20),
                          ),
                        ),
                      ),
                    ),
                    const SliverToBoxAdapter(
                      child: FooterWidget(),
                    ),
                  ],
                );
              }
              return const SizedBox.shrink();
            },
          ),
        ),
      ),
    );
  }
}
