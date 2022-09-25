import 'package:flutter/material.dart';

class MediaButton extends StatelessWidget {
  const MediaButton({
    required this.iconButton,
    this.color,
    this.border,
    Key? key,
  }) : super(key: key);
  final Color? color;
  final IconButton iconButton;
  final BoxBorder? border;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        border: border,
      ),
      child: iconButton,
    );
  }
}
