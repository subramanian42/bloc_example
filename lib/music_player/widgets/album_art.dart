import 'package:flutter/material.dart';

class AlbumArt extends StatefulWidget {
  const AlbumArt({required this.image, required this.isPlaying, Key? key})
      : super(key: key);
  final String image;
  final bool isPlaying;
  @override
  State<AlbumArt> createState() => _AlbumArtState();
}

class _AlbumArtState extends State<AlbumArt>
    with SingleTickerProviderStateMixin {
  late AnimationController _rotationController;
  @override
  void initState() {
    _rotationController = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    _rotationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.isPlaying) {
      _rotationController.repeat();
    } else {
      _rotationController.stop();
    }
    return RotationTransition(
      turns: Tween(begin: 0.0, end: 1.0).animate(_rotationController),
      child: Container(
        height: 260,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage(widget.image),
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
