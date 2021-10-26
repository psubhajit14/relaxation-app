import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_route_path.freezed.dart';

@freezed
abstract class AppRouterPath with _$AppRouterPath {
  factory AppRouterPath.player() = PlayerRouterPath;
  factory AppRouterPath.home() = HomeRouterPath;
  factory AppRouterPath.album({required int albumId}) = AlbumRouterPath;
  factory AppRouterPath.playlist({required int playlistId}) =
      PlaylistRouterPath;
  factory AppRouterPath.settings() = SettingsRouterPath;
  factory AppRouterPath.unknown() = UnknowmRouterPath;
}

//TODO: NEED TO CHANGE