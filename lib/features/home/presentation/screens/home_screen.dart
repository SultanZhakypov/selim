import 'package:flutter/material.dart';
import 'package:selim/resources/app_constants.dart';
import '../../../widgets/app_drawer.dart';
import '../../../widgets/footer_widget.dart';
import '../../../widgets/widget_blocks.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final drawerKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: drawerKey,
      backgroundColor: AppColors.colorWhite,
      endDrawer: const AppDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Column(
            children: [
              FirstWidget(
                drawerKey: drawerKey,
              ),
              const SecondWidget(),
              const ThirdWidget(),
              const FourthWidget(
                isService: false,
                title: 'Наши преимущества',
              ),
              const FifthWidget(),
              const SixthWidget(),
              const FourthWidget(
                isService: true,
                title: 'Сервис',
              ),
              const SeventhWidget(),
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: FooterWidget()),
            ],
          ),
        ),
      ),
    );
  }
}
