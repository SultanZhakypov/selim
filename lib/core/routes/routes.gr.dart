// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import '../../features/home/presentation/screens/home_screen.dart' as _i6;
import '../../features/news/data/models/news/news_model.dart' as _i9;
import '../../features/news/presentation/screens/detail_news_screen.dart'
    as _i2;
import '../../features/news/presentation/screens/detail_service_screen.dart'
    as _i1;
import '../../features/news/presentation/screens/news_screen.dart' as _i3;
import '../../features/news/presentation/screens/services_screen.dart.dart'
    as _i4;
import '../../features/news/presentation/screens/works_screen.dart' as _i5;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    DetailServiceScreenRoute.name: (routeData) {
      final args = routeData.argsAs<DetailServiceScreenRouteArgs>();
      return _i7.CustomPage<dynamic>(
        routeData: routeData,
        child: _i1.DetailServiceScreen(
          key: args.key,
          id: args.id,
        ),
        transitionsBuilder: _i7.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    DetailNewsScreenRoute.name: (routeData) {
      final args = routeData.argsAs<DetailNewsScreenRouteArgs>();
      return _i7.CustomPage<dynamic>(
        routeData: routeData,
        child: _i2.DetailNewsScreen(
          key: args.key,
          id: args.id,
          news: args.news,
        ),
        transitionsBuilder: _i7.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    NewsScreenRoute.name: (routeData) {
      return _i7.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i3.NewsScreen(),
        transitionsBuilder: _i7.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ServicesScreenRoute.name: (routeData) {
      return _i7.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i4.ServicesScreen(),
        transitionsBuilder: _i7.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    WorksScreenRoute.name: (routeData) {
      return _i7.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i5.WorksScreen(),
        transitionsBuilder: _i7.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    HomeScreenRoute.name: (routeData) {
      return _i7.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i6.HomeScreen(),
        transitionsBuilder: _i7.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(
          DetailServiceScreenRoute.name,
          path: '/detail_service',
        ),
        _i7.RouteConfig(
          DetailNewsScreenRoute.name,
          path: '/detail-news',
        ),
        _i7.RouteConfig(
          NewsScreenRoute.name,
          path: '/news',
        ),
        _i7.RouteConfig(
          ServicesScreenRoute.name,
          path: '/services',
        ),
        _i7.RouteConfig(
          WorksScreenRoute.name,
          path: '/work',
        ),
        _i7.RouteConfig(
          HomeScreenRoute.name,
          path: '/',
        ),
      ];
}

/// generated route for
/// [_i1.DetailServiceScreen]
class DetailServiceScreenRoute
    extends _i7.PageRouteInfo<DetailServiceScreenRouteArgs> {
  DetailServiceScreenRoute({
    _i8.Key? key,
    required int id,
  }) : super(
          DetailServiceScreenRoute.name,
          path: '/detail_service',
          args: DetailServiceScreenRouteArgs(
            key: key,
            id: id,
          ),
        );

  static const String name = 'DetailServiceScreenRoute';
}

class DetailServiceScreenRouteArgs {
  const DetailServiceScreenRouteArgs({
    this.key,
    required this.id,
  });

  final _i8.Key? key;

  final int id;

  @override
  String toString() {
    return 'DetailServiceScreenRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i2.DetailNewsScreen]
class DetailNewsScreenRoute
    extends _i7.PageRouteInfo<DetailNewsScreenRouteArgs> {
  DetailNewsScreenRoute({
    _i8.Key? key,
    required int id,
    required List<_i9.Result> news,
  }) : super(
          DetailNewsScreenRoute.name,
          path: '/detail-news',
          args: DetailNewsScreenRouteArgs(
            key: key,
            id: id,
            news: news,
          ),
        );

  static const String name = 'DetailNewsScreenRoute';
}

class DetailNewsScreenRouteArgs {
  const DetailNewsScreenRouteArgs({
    this.key,
    required this.id,
    required this.news,
  });

  final _i8.Key? key;

  final int id;

  final List<_i9.Result> news;

  @override
  String toString() {
    return 'DetailNewsScreenRouteArgs{key: $key, id: $id, news: $news}';
  }
}

/// generated route for
/// [_i3.NewsScreen]
class NewsScreenRoute extends _i7.PageRouteInfo<void> {
  const NewsScreenRoute()
      : super(
          NewsScreenRoute.name,
          path: '/news',
        );

  static const String name = 'NewsScreenRoute';
}

/// generated route for
/// [_i4.ServicesScreen]
class ServicesScreenRoute extends _i7.PageRouteInfo<void> {
  const ServicesScreenRoute()
      : super(
          ServicesScreenRoute.name,
          path: '/services',
        );

  static const String name = 'ServicesScreenRoute';
}

/// generated route for
/// [_i5.WorksScreen]
class WorksScreenRoute extends _i7.PageRouteInfo<void> {
  const WorksScreenRoute()
      : super(
          WorksScreenRoute.name,
          path: '/work',
        );

  static const String name = 'WorksScreenRoute';
}

/// generated route for
/// [_i6.HomeScreen]
class HomeScreenRoute extends _i7.PageRouteInfo<void> {
  const HomeScreenRoute()
      : super(
          HomeScreenRoute.name,
          path: '/',
        );

  static const String name = 'HomeScreenRoute';
}
