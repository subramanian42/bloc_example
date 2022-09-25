import 'package:flutter/material.dart';

import 'widgets/album_art.dart';
import 'widgets/album_title.dart';
import 'widgets/media_controls.dart';
import 'widgets/progress_bar.dart';

class MusicPlayerScreen extends StatelessWidget {
  const MusicPlayerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          const AlbumArt(),
          //  const AlbumTitle(),
          // const ProgressBar(),
          const SizedBox(
            height: 50,
          ),
          MediaControls(),
        ],
      ),
    );
  }
}
