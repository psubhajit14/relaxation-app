import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:relaxation/constants/textstyle.dart';
import 'package:relaxation/features/data_query_feature/presentation/widgets/songlist.dart';
import 'package:relaxation/router/app_state.dart';

import '../../../../../provider_dependecy.dart';

class PlaylistDetailsScreen extends HookConsumerWidget {
  final int playlistId;

  PlaylistDetailsScreen({required this.playlistId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppState appState = ref.watch(appStateProvider);
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
        child: SongList(),
      ),
    );
  }
}

/// Wrapper for stateful functionality to provide onInit calls in stateles widget
