import 'package:flutter/material.dart';

class StartupScreen extends StatelessWidget {
  const StartupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Startup Screen"),
          ElevatedButton(onPressed: () {}, child: Text("ddd")),
        ],
      )),
    );
  }
}
