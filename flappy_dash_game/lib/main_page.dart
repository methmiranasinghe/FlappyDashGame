import 'package:flame/game.dart';
import 'package:flappy_dash_game/flappy_dash_game.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late FlappyDashGame _flappyDashGame;

  void initState() {
    super.initState();
    _flappyDashGame = FlappyDashGame();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GameWidget(
        game: _flappyDashGame,backgroundBuilder: (context) {
          return Container(
            color: Colors.blue,
          );
        },
      ));
  }
}
