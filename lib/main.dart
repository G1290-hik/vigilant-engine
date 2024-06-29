import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'components/game.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // Force landscape mode on Android and iOS
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeRight,
    DeviceOrientation.landscapeLeft,
  ]);

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            return GameWidget<MyPhysicsGame>(
              game: MyPhysicsGame(),
            );
          },
        ),
      ),
    ),
  );
}
