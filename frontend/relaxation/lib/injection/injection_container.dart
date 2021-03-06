// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_audio_query/flutter_audio_query.dart';
import 'package:get_it/get_it.dart';
import 'package:relaxation/features/data_query_feature/data/datasources/audio_query_datasource.dart';
import 'package:relaxation/features/data_query_feature/data/datasources/audio_query_datasource_impl.dart';
import 'package:relaxation/features/data_query_feature/data/repositories/audio_query_repository_impl.dart';
import 'package:relaxation/features/data_query_feature/domain/repositories/audio_query_repository.dart';
import 'package:relaxation/features/data_query_feature/domain/usecases/usecases.dart';
import 'package:relaxation/features/data_query_feature/presentation/screens/album_details/state/album_state_bloc/album_state_bloc.dart';

import 'package:relaxation/features/data_query_feature/presentation/screens/home_/state/home_state_bloc/home_state_bloc.dart';
import 'package:relaxation/features/data_query_feature/presentation/screens/playlist_details/state/playlist_state_bloc.dart';

part 'bloc_injection.dart';
part 'usecase_injection.dart';

final sl = GetIt.instance;

void init() {
  //! Bloc
  _injectBloc();
  //! Usecase
  _usecaseInjection();
  //! Repository
  sl.registerLazySingleton<AudioQueryRepository>(
      () => AudioQueryRepositoryImpl(dataSource: sl()));
  //! Datasource
  sl.registerLazySingleton<AudioQueryDataSource>(
      () => AudioQueryDatasourceImpl(sl()));
  //! External
  sl.registerLazySingleton(() => FlutterAudioQuery());
}
