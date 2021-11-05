import 'package:flutter/material.dart';
import 'package:relaxation/features/data_query_feature/presentation/screens/screens.dart';
import 'package:relaxation/router/app_route_path.dart';
import 'package:relaxation/router/app_state.dart';

class InnerRouterDelegate extends RouterDelegate<AppRouterPath>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<AppRouterPath> {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  final AppState appState;

  InnerRouterDelegate({required this.appState});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      pages: [
        if (appState.selectedIndex == 0) ...[
          FadeAnimationPage(
            child: HomePage(),
          ),
          if (appState.albumId != null)
            MaterialPage(
              key: ValueKey(appState.albumId),
              child: AlbumDetailsScreen(albumId: appState.albumId!),
            ),
          if (appState.playlistId != null)
            MaterialPage(
              key: ValueKey(appState.playlistId),
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
        appState.copyWith(albumId: null);
        appState.copyWith(playlistId: null);
        notifyListeners();
        return route.didPop(result);
      },
    );
  }

  @override
  Future<void> setNewRoutePath(AppRouterPath configuration) {
    throw UnimplementedError();
  }
}
