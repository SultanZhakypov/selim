import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:selim/core/routes/routes.dart';
import 'package:selim/features/news/presentation/cubit/news_cubit.dart';
import 'package:selim/features/news/presentation/widgets/custom_appbar.dart';
import 'package:selim/resources/extensions.dart';
import '../../../../injectable/init_injectable.dart';
import '../../../home/presentation/widgets/buttons.dart';
import '../../../widgets/footer_widget.dart';
import '../../../widgets/items.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: sl<NewsCubit>()..getNews(),
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Appbar1(
                    title: 'НОВОСТИ КОМПАНИИ',
                    subTitle:
                        'К вашему вниманию Здесь мы собрали все актуальные новости нашей компании',
                  ),
                ),
                BlocBuilder<NewsCubit, NewsState>(
                  builder: (context, state) {
                    if (state is NewsSuccess) {
                      return Column(
                        children: [
                         
                          for (final item in state.news)
                            Padding(
                              padding: const EdgeInsets.all(16),
                              child: InkWell(
                                onTap: () => context.router.push(
                                    DetailNewsScreenRoute(
                                        id: item.id, news: state.news)),
                                child: SuggestCard(
                                  height: context.height * 0.3,
                                  news: item,
                                ),
                              ),
                            ),
                          state.isLoading
                              ? Center(
                                  child: LoadingAnimationWidget
                                      .horizontalRotatingDots(
                                          color: Colors.black, size: 50),
                                )
                              : state.nextPage == null
                                  ? const SizedBox()
                                  : Center(
                                      child: AppButton2(
                                          title: 'загрузить еще',
                                          onPress: () => context
                                              .read<NewsCubit>()
                                              .getNews()),
                                    ),
                        ],
                        
                      );
                    
                    }
                    if (state is NewsError) {
                      return const Text('error');
                    }

                    return const Text('oreLSE');
                  },
                ),
                const FooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
// CustomScrollView(
//             physics: const ClampingScrollPhysics(),
//             slivers: [
//               const SliverPadding(
//                 padding: EdgeInsets.symmetric(horizontal: 16),
//                 sliver: SliverToBoxAdapter(
//                   child: Appbar1(
//                     title: 'НОВОСТИ КОМПАНИИ',
//                     subTitle:
//                         'К вашему вниманию Здесь мы собрали все актуальные новости нашей компании',
//                   ),
//                 ),
//               ),
//               SliverList(
//                 delegate: SliverChildListDelegate(
//                   [

//                   ],
//                 ),
//               ),
//               SliverToBoxAdapter(
//                 child: Center(
//                   child: AppButton2(
//                     title: 'загрузить еще',
//                     onPress: () => sl<NewsCubit>().getNews(),
//                   ),
//                 ),
//               ),
//               const SliverToBoxAdapter(
//                 child: FooterWidget(),
//               ),
//             ],
//           ),

// SliverPadding(
//                 padding: const EdgeInsets.symmetric(horizontal: 16),
//                 sliver: BlocBuilder<NewsCubit, NewsState>(
//                   builder: (context, state) {
//                     List<Result> news = [];
//                     bool isLoading = false;
//                     if (state is NewsError) {
//                       return SliverToBoxAdapter(
//                           child: Center(
//                         child: Text(
//                           state.error,
//                           style: AppConstants.textBlackS14W500,
//                         ),
//                       ));
//                     }
//                     if (state is NewsLoading && state.isFirstFetch) {
//                       return SliverToBoxAdapter(
//                         child: Center(
//                           child: LoadingAnimationWidget.horizontalRotatingDots(
//                               color: Colors.black, size: 50),
//                         ),
//                       );
//                     }
//                     if (state is NewsLoading) {
//                       isLoading = true;
//                       news = state.news;
//                     }
//                     if (state is NewsSuccess) {
//                       news = state.news;
//                     }
//                     // SliverToBoxAdapter(
//                     //         child: Center(
//                     //           child: Text(
//                     //             'Пусто',
//                     //             style: AppConstants.textBlackS14W500,
//                     //           ),
//                     //         ),
//                     //       );

//                     return SliverList(
//                       delegate: SliverChildBuilderDelegate(
//                         childCount: news.length,
//                         (context, index) {
//                           if (index < news.length) {
//                             return Padding(
//                               padding: const EdgeInsets.only(bottom: 20),
//                               child: GestureDetector(
//                                 onTap: () => context.router.push(
//                                   DetailNewsScreenRoute(
//                                     news: news,
//                                     id: news[index].id,
//                                   ),
//                                 ),
//                                 child: SuggestCard(
//                                   height: context.height * 0.3,
//                                   news: news[index],
//                                 ),
//                               ),
//                             );
//                           } else {
//                             return SliverToBoxAdapter(
//                               child: Center(
//                                 child: LoadingAnimationWidget
//                                     .horizontalRotatingDots(
//                                         color: Colors.black, size: 50),
//                               ),
//                             );
//                           }
//                         },
//                       ),
//                     );
//                   },
//                 ),
//               ),
