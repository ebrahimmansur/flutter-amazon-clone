// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ScreenData {
  final double width;
  final double height;
  final ScreenType type;
  const ScreenData._({
    required this.width,
    required this.height,
    required this.type,
  });

  factory ScreenData.create() {
    final mediaData = MediaQueryData.fromWindow(WidgetsBinding.instance.window);
    final screenSize = mediaData.size;
    final screenType = _mapToScreenType(screenSize);

    return ScreenData._(
        width: screenSize.width, height: screenSize.height, type: screenType);
  }

  static ScreenType _mapToScreenType(Size screenSize) {
    final deviceWidth = screenSize.shortestSide;

    if (deviceWidth >= 640) {
      return ScreenType.tablet;
    }

    if (deviceWidth >= 360) {
      return ScreenType.mobile;
    }

    return ScreenType.small;
  }
}

enum ScreenType {
  small,
  mobile,
  tablet,
}
