part of 'player_state_bloc.dart';

@freezed
abstract class PlayerStateState with _$PlayerStateState {
  const factory PlayerStateState.initial() = _Initial;
  const factory PlayerStateState.loadInProgress() = _LoadInProgress;
  const factory PlayerStateState.loadSuccess() = _LoadSuccess;
  const factory PlayerStateState.loadFailure() = _LoadFailure;

}