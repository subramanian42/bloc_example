import 'package:bloc_example/music_player/widgets/media_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/music_player_bloc.dart';

class MediaControls extends StatelessWidget {
  MediaControls({required this.isplaying, Key? key}) : super(key: key);
  static const double iconSize = 35;
  final bool isplaying;
  late final MusicPlayerBloc bloc;
  @override
  Widget build(BuildContext context) {
    bloc = BlocProvider.of<MusicPlayerBloc>(context);
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _previousTrack(),
          _playButton(),
          _nextTrack(),
        ],
      ),
    );
  }

  Widget _previousTrack() {
    return MediaButton(
      iconButton: IconButton(
        onPressed: () => bloc.add(PreviousTrackButtonPressed()),
        icon: const Icon(
          Icons.skip_previous,
          size: iconSize,
        ),
        color: const Color(0xffc5c5c5),
      ),
    );
  }

  Widget _playButton() {
    return MediaButton(
        iconButton: IconButton(
          onPressed: () => bloc.add(PlayPauseButtonPressed()),
          icon: Icon(
            isplaying ? Icons.pause : Icons.play_arrow,
            size: iconSize,
          ),
          color: Colors.white,
        ),
        color: Colors.black);
  }

  Widget _nextTrack() {
    return MediaButton(
      iconButton: IconButton(
        onPressed: () => bloc.add(NextTrackButtonPressed()),
        icon: const Icon(
          Icons.skip_next,
          size: iconSize,
        ),
        color: const Color(0xffc5c5c5),
      ),
    );
  }
}
