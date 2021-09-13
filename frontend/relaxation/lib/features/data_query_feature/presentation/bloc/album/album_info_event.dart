part of 'album_info_bloc.dart';

@immutable
abstract class AlbumInfoEvent {}

class EClearAlbums extends AlbumInfoEvent {
  EClearAlbums();
}

class EGetAllAlbums extends AlbumInfoEvent {
  EGetAllAlbums();
}

class EGetAlbum extends AlbumInfoEvent {
  final String albumId;
  EGetAlbum(this.albumId);
}

class ESearchAllAlbums extends AlbumInfoEvent {
  final String query;
  ESearchAllAlbums(this.query);
}
