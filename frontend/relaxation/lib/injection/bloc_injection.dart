part of "injection_container.dart";

void _injectBloc() {
  //? AlbumInfoBloc
  sl.registerFactory(
    () => AlbumInfoBloc(sl(), sl(), sl()),
  );
  //? PlaylistInfoBloc
  sl.registerFactory(
    () => PlaylistInfoBloc(sl(), sl(), sl()),
  );
  //? SongInfoBloc
  sl.registerFactory(
    () => SongInfoBloc(
      sl(),
      sl(),
      sl(),
      sl(),
      sl(),
      sl(),
      sl(),
    ),
  );
}
