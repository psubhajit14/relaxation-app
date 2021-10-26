import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
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
