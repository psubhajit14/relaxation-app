import 'package:flutter/material.dart';
import 'injection/injection_container.dart' as di;
import 'router/app_route_information_parser.dart';
import 'router/app_router_delegate.dart';

void main() {
  di.init();
  runApp(App());
}

class App extends StatelessWidget {
  final AppRouterDelegate _appRouteDelegate = AppRouterDelegate();
  final AppRouterInformationParser _informationParser =
      AppRouterInformationParser();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Nested Route',
      routeInformationParser: _informationParser,
      routerDelegate: _appRouteDelegate,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Colors.white,
        accentColor: Colors.greenAccent,
      ),
    );
  }
}
