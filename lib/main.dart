import 'package:flutter/material.dart';
import 'package:selim/features/widgets/app_unfocuser.dart';
import 'package:selim/features/news/presentation/screens/services_screen.dart.dart';

void main() => runApp(const MyApp());

final drawerKey = GlobalKey<ScaffoldState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppUnfocuser(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Selim',
        home: ServicesScreen(),
      ),
    );
  }
}
