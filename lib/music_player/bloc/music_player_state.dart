part of 'music_player_bloc.dart';

abstract class MusicPlayerState {
  bool isPlaying;
  MusicPlayerState(this.isPlaying);
}

class InitialState extends MusicPlayerState {
  InitialState(super.isPlaying);
}

class MusicStatusUpdated extends MusicPlayerState {
  MusicStatusUpdated(super.isPlaying);
}

class NavigateToPreviousTrack extends MusicPlayerState {
  NavigateToPreviousTrack(super.isPlaying);
}

class NavigateToNextTrack extends MusicPlayerState {
  NavigateToNextTrack(super.isPlaying);
}
