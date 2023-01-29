import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: _buildLogo(),
        ),
      ),
    );
  }

  Widget _buildLogo() {
    if (defaultTargetPlatform == TargetPlatform.android) {
      return Image.asset("assets/Android_robot.png");
    } else if (defaultTargetPlatform == TargetPlatform.windows) {
      return Image.asset("assets/windows.png");
    } else {
      return Image.asset("assets/google.png");
    }
  }
}