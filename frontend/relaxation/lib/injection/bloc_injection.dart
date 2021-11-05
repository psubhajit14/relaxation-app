part of "injection_container.dart";

void _injectBloc() {
  sl.registerFactory<HomeStateBloc>(
    () => HomeStateBloc(
        getAllAlbums: sl(),
        getAllPlaylists: sl(),
        getAllSongs: sl(),
        addSongsToPlaylist: sl()),
  );
  sl.registerFactory<AlbumStateBloc>(
    () => AlbumStateBloc(
      getSongsByAlbum: sl(),
    ),
  );
  sl.registerFactoryParam<PlaylistStateBloc, dynamic, dynamic>(
    (param1, param2) => PlaylistStateBloc(
      read: param1,
      getSongsByPlaylist: sl(),
    ),
  );
}
