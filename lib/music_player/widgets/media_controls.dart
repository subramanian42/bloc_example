import 'package:bloc_example/music_player/widgets/media_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/music_player_bloc.dart';

class MediaControls extends StatelessWidget {
  MediaControls({Key? key}) : super(key: key);
  late MusicPlayerBloc _bloc;
  final double buttonPadding = 15;
  @override
  Widget build(BuildContext context) {
    _bloc = BlocProvider.of<MusicPlayerBloc>(context);
    return BlocBuilder<MusicPlayerBloc, MusicPlayerState>(
      builder: (context, state) {
        return Container(
            margin: const EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _previousTrack(),
                _playButton(state),
                _nextTrack(),
              ],
            ));
      },
    );
  }

  Widget _previousTrack() {
    return MediaButton(
      iconButton: IconButton(
        onPressed: () => _bloc.add(PreviousTrackButtonPressed()),
        icon: const Icon(
          Icons.skip_previous,
          size: 35,
        ),
        color: const Color(0xffc5c5c5),
      ),
    );
  }

  Widget _playButton(MusicPlayerState state) {
    return MediaButton(
        iconButton: IconButton(
          onPressed: () => _bloc.add(PlayPauseButtonPressed()),
          icon: Icon(
            _bloc.isplaying ? Icons.pause : Icons.play_arrow,
            size: 35,
          ),
          color: Colors.white,
        ),
        color: Colors.black);
  }

  Widget _nextTrack() {
    return MediaButton(
      iconButton: IconButton(
        onPressed: () => _bloc.add(NextTrackButtonPressed()),
        icon: const Icon(
          Icons.skip_next,
          size: 35,
        ),
        color: const Color(0xffc5c5c5),
      ),
    );
  }
}
