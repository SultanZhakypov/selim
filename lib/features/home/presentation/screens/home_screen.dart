import 'package:flutter/material.dart';
import 'package:selim/resources/app_constants.dart';

import '../widgets/footer_widget.dart';
import '../widgets/widget_blocks.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorWhite,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Column(
            children: const [
              FirstWidget(),
              SecondWidget(),
              ThirdWidget(),
              FourthWidget(
                isService: false,
                title: 'Наши преимущества',
              ),
              FifthWidget(),
              SixthWidget(),
              FourthWidget(
                isService: true,
                title: 'Сервис',
              ),
              SeventhWidget(),
              FooterWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
