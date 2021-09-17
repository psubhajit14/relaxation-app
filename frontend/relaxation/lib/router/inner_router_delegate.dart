import 'package:flutter/material.dart';
import 'package:relaxation/router/app_route_path.dart';
import 'package:relaxation/router/app_state.dart';
import 'package:relaxation/screens/screens.dart';

class InnerRouterDelegate extends RouterDelegate<AppRouterPath>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<AppRouterPath> {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  late AppState _appState;

  InnerRouterDelegate(this._appState);

  AppState get appState => _appState;

  set appState(AppState newState) {
    if (newState == _appState) {
      return;
    }
    _appState = newState;
    notifyListeners();
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      pages: [
        if (appState.selectedIndex == 0) ...[
          FadeAnimationPage(
            child: HomePage(
              onTap: (String type, int id) {
                if (type == 'album') {
                  appState.albumId = id;
                } else if (type == 'playlist') {
                  appState.playlistId = id;
                }
                notifyListeners();
              },
            ),
          ),
          if (appState.albumId != null)
            MaterialPage(
              key: ValueKey(appState.albumId),
              child: AlbumDetailsScreen(albumId: appState.albumId!),
            ),
          if (appState.playlistId != null)
            MaterialPage(
              key: ValueKey(appState.albumId),
              child: PlaylistDetailsScreen(playlistId: appState.playlistId!),
            ),
        ] else if (appState.selectedIndex == 2) ...[
          FadeAnimationPage(
            child: SettingScreen(),
            key: ValueKey('Setting'),
          ),
        ] else if (appState.selectedIndex == 1) ...[
          FadeAnimationPage(
            child: PlayerScreen(),
            key: ValueKey('Player'),
          ),
        ],
      ],
      onPopPage: (route, result) {
        appState.albumId = null;
        appState.playlistId = null;
        notifyListeners();
        return route.didPop(result);
      },
    );
  }

  @override
  Future<void> setNewRoutePath(AppRouterPath configuration) {
    // TODO: implement setNewRoutePath
    throw UnimplementedError();
  }
}
