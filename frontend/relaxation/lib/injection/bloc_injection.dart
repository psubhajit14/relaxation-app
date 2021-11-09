part of "injection_container.dart";

void _injectBloc() {
  sl.registerFactory<HomeStateBloc>(
    () => HomeStateBloc(
      getAllAlbums: sl(),
      getAllPlaylists: sl(),
      getAllSongs: sl(),
      addSongsToPlaylist: sl(),
      createPlaylist: sl(),
      removePlaylist: sl(),
    ),
  );
  sl.registerFactoryParam<AlbumStateBloc, dynamic, dynamic>(
    (param1, param2) => AlbumStateBloc(
      ref: param1,
      getSongsByAlbum: sl(),
    ),
  );
  sl.registerFactoryParam<PlaylistStateBloc, dynamic, dynamic>(
    (param1, param2) => PlaylistStateBloc(
      ref: param1,
      getSongsByPlaylist: sl(),
      removeSongsToPlaylist: sl(),
    ),
  );
}
