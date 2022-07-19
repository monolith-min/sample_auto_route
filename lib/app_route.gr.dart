// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import 'main.dart' as _i1;
import 'third_screen.dart' as _i2;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    FirstScreen.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.FirstScreen());
    },
    SecondScreen.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SecondScreen());
    },
    ThirdRoute.name: (routeData) {
      final args = routeData.argsAs<ThirdRouteArgs>();
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.ThirdPage(key: args.key, data: args.data));
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(FirstScreen.name, path: '/'),
        _i3.RouteConfig(SecondScreen.name, path: '/second'),
        _i3.RouteConfig(ThirdRoute.name, path: '/extractArguments')
      ];
}

/// generated route for
/// [_i1.FirstScreen]
class FirstScreen extends _i3.PageRouteInfo<void> {
  const FirstScreen() : super(FirstScreen.name, path: '/');

  static const String name = 'FirstScreen';
}

/// generated route for
/// [_i1.SecondScreen]
class SecondScreen extends _i3.PageRouteInfo<void> {
  const SecondScreen() : super(SecondScreen.name, path: '/second');

  static const String name = 'SecondScreen';
}

/// generated route for
/// [_i2.ThirdPage]
class ThirdRoute extends _i3.PageRouteInfo<ThirdRouteArgs> {
  ThirdRoute({_i4.Key? key, required _i1.ScreenArguments data})
      : super(ThirdRoute.name,
            path: '/extractArguments',
            args: ThirdRouteArgs(key: key, data: data));

  static const String name = 'ThirdRoute';
}

class ThirdRouteArgs {
  const ThirdRouteArgs({this.key, required this.data});

  final _i4.Key? key;

  final _i1.ScreenArguments data;

  @override
  String toString() {
    return 'ThirdRouteArgs{key: $key, data: $data}';
  }
}
