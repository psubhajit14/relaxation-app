import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:relaxation/features/data_query_feature/presentation/screens/album_details/album_state_bloc/album_state_bloc.dart';
import 'package:relaxation/features/data_query_feature/presentation/screens/home_/state/home_state_bloc/home_state_bloc.dart';
import 'package:relaxation/features/data_query_feature/presentation/screens/playlist_details/playlist_state_bloc/playlist_state_bloc.dart';
import 'package:relaxation/injection/injection_container.dart';
import 'package:relaxation/router/app_route_information_parser.dart';
import 'package:relaxation/router/app_router_delegate.dart';
import 'package:relaxation/router/app_state.dart';
import 'package:relaxation/router/inner_router_delegate.dart';

final appStateProvider = ChangeNotifierProvider((ref) => AppState(1));

final appRouterDelegateProvider = ChangeNotifierProvider(
    (ref) => AppRouterDelegate(appState: ref.read(appStateProvider)));

final appRouterInformationParser =
    Provider((ref) => AppRouterInformationParser());

final innerRouterDelegateProvider = ChangeNotifierProvider(
    (ref) => InnerRouterDelegate(appState: ref.read(appStateProvider)));

final rootBackButtonDispatcher = Provider((ref) => RootBackButtonDispatcher());

final homeStateBloc =
    StateNotifierProvider<HomeStateBloc, AsyncValue<HomeStateState>>(
        (ref) => sl<HomeStateBloc>());

final albumStateBloc =
    StateNotifierProvider<AlbumStateBloc, AsyncValue<AlbumStateState>>(
        (ref) => sl<AlbumStateBloc>());

final playlistStateBloc =
    StateNotifierProvider<PlaylistStateBloc, AsyncValue<PlaylistStateState>>(
        (ref) => sl<PlaylistStateBloc>(param1: ref.read));
