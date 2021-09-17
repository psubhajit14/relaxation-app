import 'package:flutter/material.dart';

import 'app_route_path.dart';

class AppRouterInformationParser extends RouteInformationParser<AppRouterPath> {
  @override
  Future<AppRouterPath> parseRouteInformation(
      RouteInformation routeInformation) async {
    final uri = Uri.parse(routeInformation.location!);

    if (uri.pathSegments.isNotEmpty && uri.pathSegments.first == 'settings') {
      return SettingRouterPath();
    } else if (uri.pathSegments.length >= 2) {
      if (uri.pathSegments[0] == 'album') {
        return AlbumDetailsRouterPath(int.tryParse(uri.pathSegments[1])!);
      } else if (uri.pathSegments[0] == 'playlist') {
        return PlaylistDetailsRouterPath(int.tryParse(uri.pathSegments[1])!);
      }
      return HomeRouterPath();
    } else if (uri.pathSegments.isNotEmpty &&
        uri.pathSegments.first == 'player') {
      return PlayerRouterPath();
    }
    return HomeRouterPath();
  }

  @override
  RouteInformation? restoreRouteInformation(AppRouterPath config) {
    if (config is HomeRouterPath) {
      return RouteInformation(location: '/home');
    }
    if (config is AlbumDetailsRouterPath) {
      return RouteInformation(location: '/album/${config.albumId}');
    }
    if (config is PlaylistDetailsRouterPath) {
      return RouteInformation(location: '/playlist/${config.playlistId}');
    }
    if (config is SettingRouterPath) {
      return RouteInformation(location: '/settings');
    }
    if (config is PlayerRouterPath) {
      return RouteInformation(location: '/player');
    }
    return null;
  }
}
