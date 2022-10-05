import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'music_player/music_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => MusicPlayerBloc(),
        child: const MusicPlayerScreen(),
      ),
    );
  }
}
