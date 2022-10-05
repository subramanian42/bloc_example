import 'package:flutter_bloc/flutter_bloc.dart';

part 'music_player_state.dart';
part 'music_player_event.dart';

class MusicPlayerBloc extends Bloc<MusicPlayerEvent, MusicPlayerState> {
  MusicPlayerBloc({bool isPlaying = false}) : super(InitialState(isPlaying)) {
    _playMusic = isPlaying;
    on<PlayPauseButtonPressed>(_handlePlay);
    on<PreviousTrackButtonPressed>(_handlePreviousTrack);
    on<NextTrackButtonPressed>(_handleNextTrack);
  }
  late bool _playMusic;
  void _handlePlay(
      PlayPauseButtonPressed event, Emitter<MusicPlayerState> emit) {
    _playMusic = !_playMusic;
    emit(MusicStatusUpdated(_playMusic));
  }

  void _handlePreviousTrack(
      PreviousTrackButtonPressed event, Emitter<MusicPlayerState> emit) {
    emit(NavigateToPreviousTrack(_playMusic));
  }

  void _handleNextTrack(
      NextTrackButtonPressed event, Emitter<MusicPlayerState> emit) {
    emit(NavigateToNextTrack(_playMusic));
  }
}
