import 'package:flutter/material.dart';
import 'package:relaxation/router/router_path.dart';
import 'app_route_path.dart';

class AppRouterInformationParser extends RouteInformationParser<AppRouterPath> {
  @override
  Future<AppRouterPath> parseRouteInformation(
      RouteInformation routeInformation) async {
    final uri = Uri.parse(routeInformation.location!);
    if (uri.pathSegments.isNotEmpty) {
      if (uri.pathSegments.first == RouterPath.Settings) {
        return SettingsRouterPath();
      } else if (uri.pathSegments.length >= 2) {
        if (uri.pathSegments[0] == RouterPath.Album) {
          return AlbumRouterPath(albumId: int.tryParse(uri.pathSegments[1])!);
        } else if (uri.pathSegments[0] == RouterPath.Playlist) {
          return PlaylistRouterPath(
              playlistId: int.tryParse(uri.pathSegments[1])!);
        }
        return HomeRouterPath();
      } else if (uri.pathSegments.first == RouterPath.Player) {
        return PlayerRouterPath();
      } else if (uri.pathSegments.first == RouterPath.Home) {
        return HomeRouterPath();
      }
      return UnknowmRouterPath();
    }
    return UnknowmRouterPath();
  }

  @override
  RouteInformation? restoreRouteInformation(AppRouterPath config) {
    if (config is HomeRouterPath) {
      return RouteInformation(location: '/${RouterPath.Home}');
    }
    if (config is AlbumRouterPath) {
      return RouteInformation(
          location: '/${RouterPath.Album}/${config.albumId}');
    }
    if (config is PlaylistRouterPath) {
      return RouteInformation(
          location: '/${RouterPath.Playlist}/${config.playlistId}');
    }
    if (config is SettingsRouterPath) {
      return RouteInformation(location: '/${RouterPath.Settings}');
    }
    if (config is PlayerRouterPath) {
      return RouteInformation(location: '/${RouterPath.Home}');
    }
    return RouteInformation(location: '/${RouterPath.Unknown}');
  }
}
