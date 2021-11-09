import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:relaxation/constants/labels.dart';
import 'package:relaxation/constants/textstyle.dart';
import 'package:relaxation/features/data_query_feature/presentation/screens/album_details/state/album_state_bloc/album_state_bloc.dart';
import 'package:relaxation/features/data_query_feature/presentation/widgets/songlist.dart';
import 'package:relaxation/router/app_state.dart';

import '../../../../../provider_dependecy.dart';

class AlbumDetailsScreen extends ConsumerWidget {
  final int albumId;

  AlbumDetailsScreen({required this.albumId});

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final AppState appState = watch(appStateProvider);
    final state = watch(albumStateBloc);
    final bloc = context.read(albumStateBloc.notifier);

    return Scaffold(
        appBar: AppBar(
          leading: BackButton(
            onPressed: () {
              appState.copyWith(albumId: null);
            },
          ),
          title: Text("Album Details", style: KHeading1),
        ),
        body: Container(
          height: double.infinity,
          color: Colors.black,
          child: state.maybeWhen(
              data: (data) => SongList(songs: data.songs, type: LAlbum),
              orElse: () => Center(child: CircularProgressIndicator())),
        ));
  }
}
