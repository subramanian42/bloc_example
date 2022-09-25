import 'package:flutter_bloc/flutter_bloc.dart';

part 'music_player_state.dart';
part 'music_player_event.dart';

class MusicPlayerBloc extends Bloc<MusicPlayerEvent, MusicPlayerState> {
  MusicPlayerBloc() : super(InitialState()) {
    on<PlayPauseButtonPressed>(_handlePlay);
  }
  bool isplaying = false;
  void _handlePlay(
      PlayPauseButtonPressed event, Emitter<MusicPlayerState> emit) {
    isplaying = !isplaying;

    emit(PlayPauseButtonResponse(isplaying));
  }
}
