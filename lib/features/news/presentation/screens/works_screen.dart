import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:selim/features/news/presentation/widgets/custom_appbar.dart';
import 'package:selim/features/widgets/cached_image.dart';
import 'package:selim/resources/app_constants.dart';
import 'package:selim/resources/extensions.dart';
import '../../../../injectable/init_injectable.dart';
import '../../../../cubits/product_cubit.dart';
import '../../../widgets/footer_widget.dart';

class WorksScreen extends StatelessWidget {
  const WorksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: sl<ProductCubit>()..getProduct(),
      child: Scaffold(
        body: SafeArea(
          bottom: false,
          child: SingleChildScrollView(
            physics: const ScrollPhysics(),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Appbar1(
                    title: 'НАШИ РАБОТЫ',
                    subTitle:
                        'Здесь мы собрали наши лучшие проекты, чтобы вы могли вдохновиться идеями для собственного проекта. Вы найдёте проект по душе и нраву, который захотите воплотить в жизнь.',
                  ),
                ),
                const SizedBox(height: 20),
                BlocBuilder<ProductCubit, ProductState>(
                  builder: (context, state) {
                    if (state is ProductError) {
                      return SizedBox(
                        height: context.height * 0.2,
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
                        height: context.height * 0.2,
                        child: Center(
                          child: LoadingAnimationWidget.horizontalRotatingDots(
                              color: Colors.black, size: 50),
                        ),
                      );
                    }
                    if (state is ProductSuccess) {
                      return ListView.builder(
                        itemCount: state.product.length,
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.all(16),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: CachedImage(
                              imageurl: state.product[index].image,
                              widget: SizedBox(height: context.height * 0.3),
                            ),
                          ),
                        ),
                      );
                    }
                    return const SizedBox.shrink();
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
