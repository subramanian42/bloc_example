part of 'music_player_bloc.dart';

abstract class MusicPlayerState {}

class InitialState extends MusicPlayerState {}

class PlayPauseButtonResponse extends MusicPlayerState {
  bool isplaying;
  PlayPauseButtonResponse(this.isplaying);
}

class NavigateToNextTrack extends MusicPlayerState {}

class NavigateToPreviousTrack extends MusicPlayerState {}
