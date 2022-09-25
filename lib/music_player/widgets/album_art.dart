import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/music_player_bloc.dart';

class AlbumArt extends StatefulWidget {
  const AlbumArt({Key? key}) : super(key: key);

  @override
  State<AlbumArt> createState() => _AlbumArtState();
}

class _AlbumArtState extends State<AlbumArt>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  @override
  void initState() {
    _animationController = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<MusicPlayerBloc, MusicPlayerState>(
      listener: (context, state) {
        if (state is PlayPauseButtonResponse && state.isplaying) {
          _animationController.repeat();
        } else {
          _animationController.stop();
        }
      },
      child: RotationTransition(
        turns: Tween(begin: 0.0, end: 1.0).animate(_animationController),
        child: Container(
          height: 260,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(
                'assets/images/track_image_1.jpeg',
              ),
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
