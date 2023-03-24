import 'package:flutter/material.dart';
import 'package:selim/features/home/presentation/widgets/widget_blocks.dart';
import 'package:selim/resources/app_constants.dart';
import 'package:selim/resources/extensions.dart';
import 'package:selim/resources/resources.dart';
import '../../../widgets/footer_widget.dart';

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
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
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
                  const MainInfoWidget(),
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
                  const FooterWidget()
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
