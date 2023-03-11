import 'package:flutter/material.dart';
import 'package:selim/core/routes/routes.dart';
import 'package:selim/features/widgets/app_unfocuser.dart';

import 'injectable/init_injectable.dart';

void main() {
   configureInjection(Env.dev);
runApp(const MyApp());
} 

final appRouter = AppRouter();
final globalKey = GlobalKey<ScaffoldMessengerState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AppUnfocuser(
      child: MaterialApp.router(
        scaffoldMessengerKey: globalKey,
        routeInformationParser: appRouter.defaultRouteParser(),
        routerDelegate: appRouter.delegate(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
