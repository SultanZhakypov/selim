import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:selim/cubits/categories_cubit.dart';
import 'package:selim/cubits/product_cubit.dart';
import 'package:selim/features/home/presentation/cubit/about_us_cubit.dart';
import 'package:selim/features/home/presentation/cubit/main_info_cubit.dart';
import 'package:selim/features/home/presentation/cubit/review_cubit.dart';
import 'package:selim/features/home/presentation/widgets/widget_blocks.dart';
import 'package:selim/features/news/presentation/cubit/advantage_cubit.dart';
import 'package:selim/features/news/presentation/cubit/news_cubit.dart';
import 'package:selim/injectable/init_injectable.dart';
import 'package:selim/resources/app_constants.dart';
import 'package:selim/resources/extensions.dart';
import 'package:selim/resources/resources.dart';
import 'package:selim/features/widgets/footer_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<MainInfoCubit>()..getMainInfo(),
        ),
        BlocProvider(
          create: (context) => sl<AboutUsCubit>()..getAboutUs(),
        ),
        BlocProvider(
          create: (context) => sl<CategoriesCubit>()..getCategories(),
        ),
        BlocProvider(
          create: (context) =>
              sl<AdvantageOrServiceCubit>()..getAdvantagesAndService(),
        ),
        BlocProvider(
          create: (context) => sl<NewsCubit>()..getNews(),
        ),
        BlocProvider(
          create: (context) => sl<ProductCubit>()..getProduct(),
        ),
        BlocProvider(
          create: (context) => sl<ReviewCubit>()..getReview(),
        ),
      ],
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: SafeArea(
          bottom: false,
          child: SingleChildScrollView(
            controller: _scrollController,
            physics: const ClampingScrollPhysics(),
            child: Stack(
              children: [
                Image.asset(Images.bagimage),
                Column(
                  children: [
                    HeaderWidget(controller: _scrollController),
                    SizedBox(height: context.height * 0.18),
                    const AboutUSWidget(),
                    SizedBox(height: context.height * 0.1),
                    const SuggestWidget(),
                    SizedBox(height: context.height * 0.03),
                    const AdvantageOrService(
                      isService: false,
                      title: 'Наши преимущества',
                    ),
                    const NewsWidget(),
                    const SizedBox(height: 32),
                    const UsWorkWidget(),
                    const AdvantageOrService(
                      isService: true,
                      title: 'Сервис',
                    ),
                    const SizedBox(height: 32),
                    const FeedBackWidget(),
                    const SizedBox(height: 32),
                    FooterWidget()
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
