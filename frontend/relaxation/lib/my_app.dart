import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';
import 'package:relaxation/router/app_state.dart';
import 'package:relaxation/router/inner_router_delegate.dart';

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

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();
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
        ChangeNotifierProvider<AppState>.value(value: widget.appState),
        Provider<AudioPlayer>.value(value: _audioPlayer),
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
