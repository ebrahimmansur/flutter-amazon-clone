import 'package:amazon_clone_app/src/common/design.system/design.system.provider.dart';
import 'package:amazon_clone_app/src/startup.screen.dart';
import 'package:flutter/material.dart';

abstract class AppHostRunner {
  const AppHostRunner._();

  static Future<void> run() async {
    runApp(const HostWidget());
  }
}

class HostWidget extends StatelessWidget {
  static const String kTitle = "Amazon Clone";
  const HostWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DesignSystemProvider(
      builder: (BuildContext context, state) {
        return MaterialApp(
          title: kTitle,
          onGenerateTitle: (context) => kTitle,
          debugShowCheckedModeBanner: false,
          theme: state.light,
          darkTheme: state.dark,
          themeMode: state.themeMode,
          home: const StartupScreen(),
        );
      },
    );
  }
}
