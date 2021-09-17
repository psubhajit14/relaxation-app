import 'package:flutter/material.dart';
import 'injection/injection_container.dart' as di;
import 'router/app_route_information_parser.dart';
import 'router/app_router_delegate.dart';

void main() {
  di.init();
  runApp(App());
}

class App extends StatelessWidget {
  final AppRouterDelegate _recipeRouteDelegate = AppRouterDelegate();
  final AppRouterInformationParser _informationParser =
      AppRouterInformationParser();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Nested Route',
      routeInformationParser: _informationParser,
      routerDelegate: _recipeRouteDelegate,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Colors.white,
        accentColor: Colors.greenAccent,
      ),
    );
  }
}







// BlocProvider(
//         create: (_) => di.sl<SongInfoBloc>(),
//         child: Player(),
//       ),
