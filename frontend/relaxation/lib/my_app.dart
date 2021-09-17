import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';
import 'package:relaxation/router/app_state.dart';
import 'package:relaxation/router/inner_router_delegate.dart';

import 'core/shared_data/queue.dart';
import 'features/audio_player_feature/presentation/data/song_or_album.dart';
import 'features/data_query_feature/presentation/bloc/album/album_info_bloc.dart';
import 'features/data_query_feature/presentation/bloc/playlist/playlist_info_bloc.dart';
import 'features/data_query_feature/presentation/bloc/song/song_info_bloc.dart';
import 'injection/injection_container.dart' as di;

class MyApp extends StatefulWidget {
  final AppState appState;

  const MyApp({Key? key, required this.appState}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late InnerRouterDelegate _innerRouterDelegate;
  late ChildBackButtonDispatcher _backButtonDispatcher;
  late AudioPlayer _audioPlayer;
  late Queue _queue;

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();
    _queue = Queue(_audioPlayer);
    _innerRouterDelegate = InnerRouterDelegate(widget.appState);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _backButtonDispatcher = Router.of(context)
        .backButtonDispatcher!
        .createChildBackButtonDispatcher();
  }

  @override
  void didUpdateWidget(covariant MyApp oldWidget) {
    super.didUpdateWidget(oldWidget);
    _innerRouterDelegate.appState = widget.appState;
  }

  @override
  Widget build(BuildContext context) {
    var appState = widget.appState;
    return SafeArea(
        child: MultiProvider(
      providers: [
        BlocProvider<SongInfoBloc>(create: (_) => di.sl<SongInfoBloc>()),
        BlocProvider<AlbumInfoBloc>(create: (_) => di.sl<AlbumInfoBloc>()),
        BlocProvider<PlaylistInfoBloc>(
            create: (_) => di.sl<PlaylistInfoBloc>()),
        ChangeNotifierProvider<SongOrAlbum>(
          create: (_) => SongOrAlbum(true),
        ),
        ChangeNotifierProvider<AppState>.value(value: widget.appState),
        Provider<AudioPlayer>.value(value: _audioPlayer),
        Provider<Queue>.value(value: _queue)
      ],
      builder: (ctx, _) {
        return Scaffold(
          body: Router(
            routerDelegate: _innerRouterDelegate,
            backButtonDispatcher: _backButtonDispatcher,
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.music_note_outlined),
                label: 'Player',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
              ),
            ],
            currentIndex: appState.selectedIndex,
            onTap: (idx) {
              appState.selectedIndex = idx;
            },
          ),
        );
      },
    ));
  }
}
