import 'package:flutter/material.dart';
import 'package:relaxation/router/app_route_path.dart';

import '../my_app.dart';
import 'app_state.dart';

class AppRouterDelegate extends RouterDelegate<AppRouterPath>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<AppRouterPath> {
  final GlobalKey<NavigatorState> navigatorKey;
  final AppState appState = AppState();
  AppRouterDelegate() : navigatorKey = GlobalKey<NavigatorState>() {
    appState.addListener(notifyListeners);
  }

  @override
  Future<void> setNewRoutePath(AppRouterPath config) async {
    if (config is HomeRouterPath) {
      appState.selectedIndex = 0;
    } else if (config is PlayerRouterPath) {
      appState.selectedIndex = 1;
    } else if (config is SettingRouterPath) {
      appState.selectedIndex = 2;
    } else if (config is AlbumDetailsRouterPath) {
      appState.selectedIndex = 0;
      appState.albumId = config.albumId;
    } else if (config is PlaylistDetailsRouterPath) {
      appState.selectedIndex = 0;
      appState.playlistId = config.playlistId;
    }
  }

  AppRouterPath get currentConfig {
    if (appState.selectedIndex == 0) {
      if (appState.albumId != null) {
        return AlbumDetailsRouterPath(appState.albumId!);
      }
      if (appState.playlistId != null) {
        return PlaylistDetailsRouterPath(appState.playlistId!);
      }
      return HomeRouterPath();
    } else if (appState.selectedIndex == 1) {
      return PlayerRouterPath();
    } else if (appState.selectedIndex == 2) {
      return SettingRouterPath();
    } else
      return HomeRouterPath();
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: this.navigatorKey,
      onPopPage: (route, result) {
        if (!route.didPop(result)) {
          return false;
        }
        if (appState.albumId != null) {
          appState.albumId = null;
        }
        if (appState.playlistId != null) {
          appState.playlistId = null;
        }
        notifyListeners();
        return true;
      },
      pages: [
        MaterialPage(
          child: MyApp(appState: appState), // appShell
        ),
      ],
    );
  }
}
