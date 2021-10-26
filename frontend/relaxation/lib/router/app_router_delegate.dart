import 'package:flutter/material.dart';
import 'package:relaxation/router/app_route_path.dart';

import '../my_app.dart';
import 'app_state.dart';

class AppRouterDelegate extends RouterDelegate<AppRouterPath>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<AppRouterPath> {
  final GlobalKey<NavigatorState> navigatorKey;
  final AppState appState;

  AppRouterDelegate({required this.appState})
      : navigatorKey = GlobalKey<NavigatorState>() {
    appState.addListener(() {
      notifyListeners();
    });
  }

  @override
  Future<void> setNewRoutePath(AppRouterPath config) async {
    if (config is HomeRouterPath) {
      appState.copyWith(selectedIndex: 0);
    } else if (config is PlayerRouterPath) {
      appState.copyWith(selectedIndex: 1);
    } else if (config is SettingsRouterPath) {
      appState.copyWith(selectedIndex: 2);
    } else if (config is AlbumRouterPath) {
      appState.copyWith(selectedIndex: 0, albumId: config.albumId);
    } else if (config is PlaylistRouterPath) {
      appState.copyWith(selectedIndex: 0, playlistId: config.playlistId);
    } else {
      appState.copyWith(selectedIndex: 0);
    }
  }

  AppRouterPath get currentConfig {
    if (appState.selectedIndex == 0) {
      if (appState.albumId != null) {
        return AlbumRouterPath(albumId: appState.albumId!);
      }
      if (appState.playlistId != null) {
        return PlaylistRouterPath(playlistId: appState.playlistId!);
      }
      return HomeRouterPath();
    } else if (appState.selectedIndex == 1) {
      return PlayerRouterPath();
    } else if (appState.selectedIndex == 2) {
      return SettingsRouterPath();
    } else
      return UnknowmRouterPath();
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
          appState.copyWith(albumId: null);
        }
        if (appState.playlistId != null) {
          appState.copyWith(playlistId: null);
        }
        notifyListeners();
        return true;
      },
      pages: [
        MaterialPage(
          child: MyApp(),
        ),
      ],
    );
  }
}
