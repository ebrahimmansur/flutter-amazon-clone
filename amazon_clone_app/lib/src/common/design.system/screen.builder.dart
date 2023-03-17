import 'design.system.provider.dart';
import 'package:flutter/material.dart';

import 'screen.data.dart';

class DesignSystemScreenBuilder extends StatelessWidget {
  final Widget small;
  final Widget mobile;
  final Widget tablet;
  const DesignSystemScreenBuilder({
    Key? key,
    required this.small,
    required this.mobile,
    required this.tablet,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenData = context.designThemesData;
    switch (screenData.screenData.type) {
      case ScreenType.small:
        return small;
      case ScreenType.mobile:
        return mobile;
      case ScreenType.tablet:
        return tablet;
    }
  }
}
