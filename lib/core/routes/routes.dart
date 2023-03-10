import 'package:auto_route/auto_route.dart';
import 'package:selim/features/home/presentation/screens/home_screen.dart';
import 'package:selim/features/news/presentation/screens/detail_news_screen.dart';
import 'package:selim/features/news/presentation/screens/detail_service_screen.dart';
import 'package:selim/features/news/presentation/screens/news_screen.dart';
import 'package:selim/features/news/presentation/screens/services_screen.dart.dart';
import 'package:selim/features/news/presentation/screens/works_screen.dart';

export 'routes.gr.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    CustomRoute(
      transitionsBuilder: TransitionsBuilders.fadeIn,
      page: DetailServiceScreen,
      path: '/detail_service',
    ),
    CustomRoute(
      transitionsBuilder: TransitionsBuilders.fadeIn,
      page: DetailNewsScreen,
      path: '/detail-news',
    ),
    CustomRoute(
      transitionsBuilder: TransitionsBuilders.fadeIn,
      page: NewsScreen,
      path: '/news',
    ),
    CustomRoute(
      transitionsBuilder: TransitionsBuilders.fadeIn,
      page: ServicesScreen,
      path: '/services',
    ),
    CustomRoute(
      transitionsBuilder: TransitionsBuilders.fadeIn,
      page: WorksScreen,
      path: '/work',
    ),
    CustomRoute(
      transitionsBuilder: TransitionsBuilders.fadeIn,
      page: HomeScreen,
      initial: true,
      path: '/',
    ),
  ],
)
class $AppRouter {}
