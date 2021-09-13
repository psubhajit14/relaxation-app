import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:relaxation/features/audio_player_feature/presentation/data/song_or_album.dart';
import 'package:relaxation/features/data_query_feature/presentation/bloc/album/album_info_bloc.dart';
import 'package:relaxation/features/data_query_feature/presentation/bloc/playlist/playlist_info_bloc.dart';

import 'features/data_query_feature/presentation/bloc/song/song_info_bloc.dart';
import 'features/data_query_feature/presentation/pages/homepage.dart';
import 'injection/injection_container.dart' as di;

void main() {
  di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: MultiBlocProvider(
              providers: [
                BlocProvider<SongInfoBloc>(
                    create: (_) => di.sl<SongInfoBloc>()),
                BlocProvider<AlbumInfoBloc>(
                    create: (_) => di.sl<AlbumInfoBloc>()),
                BlocProvider<PlaylistInfoBloc>(
                    create: (_) => di.sl<PlaylistInfoBloc>())
              ],
              child: ChangeNotifierProvider<SongOrAlbum>(
                create: (_) => SongOrAlbum(true),
                builder: (ctx, _) {
                  return HomePage();
                },
              )),
        ),
      ),
    );
  }
}




// BlocProvider(
//         create: (_) => di.sl<SongInfoBloc>(),
//         child: Player(),
//       ),
