import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/music_player_bloc.dart';
import 'widgets/album_art.dart';
// import 'widgets/album_title.dart';
import 'widgets/media_controls.dart';
// import 'widgets/progress_bar.dart';

class MusicPlayerScreen extends StatelessWidget {
  const MusicPlayerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MusicPlayerBloc, MusicPlayerState>(
      builder: (context, state) {
        return Scaffold(
          body: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              AlbumArt(
                image: 'assets/images/track_image_1.jpeg',
                isPlaying: state.isPlaying,
              ),
              //  const AlbumTitle(),
              // const ProgressBar(),
              const SizedBox(
                height: 50,
              ),
              MediaControls(isplaying: state.isPlaying),
            ],
          ),
        );
      },
    );
  }
}
