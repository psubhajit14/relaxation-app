part of "injection_container.dart";

void _usecaseInjection() {
  sl.registerLazySingleton(() => UGetSong(repository: sl()));
  sl.registerLazySingleton(() => UGetAlbum(repository: sl()));
  sl.registerLazySingleton(() => UGetAllSongs(repository: sl()));
  sl.registerLazySingleton(() => UGetAllAlbums(repository: sl()));
  sl.registerLazySingleton(() => UGetAllPlaylists(repository: sl()));
  sl.registerLazySingleton(() => UGetSongsByAlbum(repository: sl()));
  sl.registerLazySingleton(() => UGetSongsByPlaylist(repository: sl()));
  sl.registerLazySingleton(() => UAddSongsToPlaylist(repository: sl()));
  sl.registerLazySingleton(() => URemoveSongsToPlaylist(repository: sl()));
  sl.registerLazySingleton(() => UCreatePlaylist(repository: sl()));
  sl.registerLazySingleton(() => URemovePlaylist(repository: sl()));
  sl.registerLazySingleton(() => USearchAllAlbums(repository: sl()));
  sl.registerLazySingleton(() => USearchAllSongs(repository: sl()));
}
