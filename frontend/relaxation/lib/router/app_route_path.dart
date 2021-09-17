abstract class AppRouterPath {}

class PlayerRouterPath extends AppRouterPath {}

class HomeRouterPath extends AppRouterPath {}

class AlbumDetailsRouterPath extends AppRouterPath {
  final int albumId;

  AlbumDetailsRouterPath(this.albumId);
}

class PlaylistDetailsRouterPath extends AppRouterPath {
  final int playlistId;

  PlaylistDetailsRouterPath(this.playlistId);
}

class SettingRouterPath extends AppRouterPath {}
