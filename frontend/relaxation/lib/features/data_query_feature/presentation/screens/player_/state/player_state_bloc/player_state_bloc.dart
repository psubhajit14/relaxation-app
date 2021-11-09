import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_state_state.dart';
part 'player_state_event.dart';
part 'player_state_bloc.freezed.dart';

class PlayerStateBloc extends Bloc<PlayerStateEvent,PlayerStateState>{
  PlayerStateBloc() : super(_Initial());

  @override
  Stream<PlayerStateState> mapEventToState(PlayerStateEvent gEvent) async* {
    yield* gEvent.map();
  }
}