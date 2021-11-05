import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:relaxation/constants/textstyle.dart';
import 'package:relaxation/provider_dependecy.dart';
import 'package:relaxation/router/app_state.dart';
import 'package:relaxation/router/inner_router_delegate.dart';
import 'package:relaxation/router/router_path.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final AppState appState = watch(appStateProvider);
    final InnerRouterDelegate _innerRouterDelegate =
        watch(innerRouterDelegateProvider);
    final RootBackButtonDispatcher _backButtonDispatcher =
        watch(rootBackButtonDispatcher);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[900],
        body: Router(
          routerDelegate: _innerRouterDelegate,
          backButtonDispatcher:
              _backButtonDispatcher.createChildBackButtonDispatcher(),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child: SalomonBottomBar(
            unselectedItemColor: Colors.white,
            selectedItemColor: Colors.green,
            items: [
              SalomonBottomBarItem(
                icon: Icon(
                  Icons.home,
                ),
                title: Text(
                  RouterPath.Home.toUpperCase(),
                  style: KHeading3,
                ),
              ),
              SalomonBottomBarItem(
                icon: Icon(Icons.music_note_outlined),
                title: Text(
                  RouterPath.Player.toUpperCase(),
                  style: KHeading3,
                ),
              ),
              SalomonBottomBarItem(
                icon: Icon(Icons.settings),
                title: Text(
                  RouterPath.Settings.toUpperCase(),
                  style: KHeading3,
                ),
              ),
            ],
            currentIndex: appState.selectedIndex,
            onTap: (idx) {
              appState.copyWith(selectedIndex: idx);
            },
          ),
        ),
      ),
    );
  }
}
