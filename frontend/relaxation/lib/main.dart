import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:relaxation/provider_dependecy.dart';
import 'injection/injection_container.dart' as di;
import 'router/app_route_information_parser.dart';
import 'router/app_router_delegate.dart';

void main() {
  di.init();
  runApp(ProviderScope(child: App()));
}

class App extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final AppRouterDelegate _appRouteDelegate =
        watch(appRouterDelegateProvider);
    final AppRouterInformationParser _informationParser =
        watch(appRouterInformationParser);
    final RootBackButtonDispatcher _backButtonDispatcher =
        watch(rootBackButtonDispatcher);
    return MaterialApp.router(
      title: 'Relaxation App',
      routeInformationParser: _informationParser,
      routerDelegate: _appRouteDelegate,
      backButtonDispatcher: _backButtonDispatcher,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          backgroundColor: Colors.grey[900],
          accentColor: Colors.greenAccent,
          primaryColor: Colors.green,
          iconTheme: IconThemeData(color: Colors.white)),
    );
  }
}
