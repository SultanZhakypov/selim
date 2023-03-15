import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:selim/core/routes/routes.dart';
import 'package:selim/features/news/presentation/cubit/detail_news.dart';
import 'package:selim/features/news/presentation/widgets/custom_appbar.dart';
import 'package:selim/features/widgets/cached_image.dart';
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
  final List<NewsModel> news;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<NewsDetailCubit>()..getDetailNews(id),
      child: Scaffold(
        body: SafeArea(
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
                List<NewsModel> similarNews = [...news];
                int? idOfSimilarNews;
                String? img;
                similarNews
                    .removeWhere((detailModel) => detailModel == state.news);
                for (var element in similarNews) {
                  idOfSimilarNews = element.id;
                }

                for (var element in state.news.newsImages) {
                  img = 'http://161.35.29.179:8001${element.image}';
                }

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
                                : CachedImage(
                                    imageUrl: img ?? '',
                                    height: context.height * 0.5),
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
                          height: context.height * 0.3,
                          child: ListView.separated(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            scrollDirection: Axis.horizontal,
                            itemCount: similarNews.length,
                            itemBuilder: (context, index) => SizedBox(
                                width: context.width * 0.8,
                                child: GestureDetector(
                                  onTap: () => context.router.push(
                                    DetailNewsScreenRoute(
                                      id: idOfSimilarNews ?? 0,
                                      news: news,
                                    ),
                                  ),
                                  child: NewsImagesCard(
                                    news: similarNews[index],
                                  ),
                                )),
                            separatorBuilder: (context, index) =>
                                const SizedBox(
                              width: 20,
                            ),
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
