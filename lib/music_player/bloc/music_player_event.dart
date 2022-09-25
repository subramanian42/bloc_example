part of 'music_player_bloc.dart';

abstract class MusicPlayerEvent {}

class PlayPauseButtonPressed extends MusicPlayerEvent {}

class NextTrackButtonPressed extends MusicPlayerEvent {}

class PreviousTrackButtonPressed extends MusicPlayerEvent {}
