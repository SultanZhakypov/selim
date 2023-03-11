import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:selim/features/home/presentation/bloc/home_bloc.dart';
import 'package:selim/features/widgets/widget_blocks.dart';
import 'package:selim/injectable/init_injectable.dart';
import 'package:selim/resources/extensions.dart';
import 'package:selim/resources/resources.dart';

import '../../../widgets/footer_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<HomeBloc>()..add(const HomeEvent.getMainInfo()),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: Stack(
              children: [
                Image.asset(Images.bagimage),
                Column(
                  children: [
                    const HeaderWidget(),
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
      ),
    );
  }
}
