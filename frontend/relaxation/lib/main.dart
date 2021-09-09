import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:relaxation/features/data_query_feature/presentation/bloc/song/song_info_bloc.dart';
import 'package:relaxation/injection/injection_container.dart' as di;

import 'features/audio_player_feature/presentation/widgets/player.dart';

void main() {
  di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (_) => di.sl<SongInfoBloc>(),
        child: Player(),
      ),
    );
  }
}
