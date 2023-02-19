import 'package:flutter/material.dart';
import 'package:selim/features/news/presentation/screens/kar_service_screen.dart';
import 'package:selim/features/widgets/app_unfocuser.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppUnfocuser(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Selim',
        home: KarServiceScreen(),
      ),
    );
  }
}
