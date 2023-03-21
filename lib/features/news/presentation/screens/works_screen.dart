import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:selim/features/news/presentation/widgets/custom_appbar.dart';
import 'package:selim/resources/app_constants.dart';
import 'package:selim/resources/extensions.dart';
import '../../../../injectable/init_injectable.dart';
import '../../../home/presentation/cubit/product_cubit.dart';
import '../../../widgets/footer_widget.dart';

class WorksScreen extends StatelessWidget {
  const WorksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<ProductCubit>()..getProduct(),
      child: Scaffold(
        body: SafeArea(
          child: CustomScrollView(
            physics: const ClampingScrollPhysics(),
            slivers: [
              const SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                sliver: SliverToBoxAdapter(
                  child: Appbar1(
                    title: 'НАШИ РАБОТЫ',
                    subTitle:
                        'Здесь мы собрали наши лучшие проекты, чтобы вы могли вдохновиться идеями для собственного проекта. Вы найдёте проект по душе и нраву, который захотите воплотить в жизнь.',
                  ),
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(height: 20),
              ),
              BlocBuilder<ProductCubit, ProductState>(
                builder: (context, state) {
                  if (state is ProductError) {
                    return SliverToBoxAdapter(
                      child: SizedBox(
                        height: context.height * 0.4,
                        child: Text(
                          state.error,
                          style: AppConstants.textBlackS14W500,
                        ),
                      ),
                    );
                  }
                  if (state is ProductLoading) {
                    return SliverToBoxAdapter(
                      child: Center(
                        child: LoadingAnimationWidget.horizontalRotatingDots(
                            color: Colors.black, size: 50),
                      ),
                    );
                  }
                  if (state is ProductSuccess) {
                    return SliverList(
                      delegate: SliverChildBuilderDelegate(
                        childCount: state.product.length,
                        (context, index) => Container(
                          height: context.height * 0.3,
                          margin: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            image: DecorationImage(
                              image: CachedNetworkImageProvider(
                                  state.product[index].image),
                              fit: BoxFit.fill,
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
