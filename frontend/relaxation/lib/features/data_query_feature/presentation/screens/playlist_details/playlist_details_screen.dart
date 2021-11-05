import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:relaxation/constants/labels.dart';
import 'package:relaxation/constants/textstyle.dart';
import 'package:relaxation/features/data_query_feature/presentation/screens/playlist_details/playlist_state_bloc/playlist_state_bloc.dart';
import 'package:relaxation/features/data_query_feature/presentation/widgets/songlist.dart';
import 'package:relaxation/router/app_state.dart';

import '../../../../../provider_dependecy.dart';

class PlaylistDetailsScreen extends ConsumerWidget {
  final int playlistId;

  PlaylistDetailsScreen({required this.playlistId});

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final AppState appState = watch(appStateProvider);
    final state = watch(playlistStateBloc);
    final bloc = watch(playlistStateBloc.notifier);
    state.maybeWhen(
        orElse: () => bloc.add(PlaylistStateEvent.loadSongs(playlistId)));
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            appState.copyWith(playlistId: null);
          },
        ),
        title: Text("Playlist Details", style: KHeading1),
      ),
      body: Container(
        height: double.infinity,
        color: Colors.black,
        child: SongList(
          type: LPlaylist,
          songs: [],
        ),
      ),
    );
  }
}

/// Wrapper for stateful functionality to provide onInit calls in stateles widget
