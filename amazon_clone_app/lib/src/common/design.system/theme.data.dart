// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'colors.data.dart';
import 'images.data.dart';
import 'screen.data.dart';

class DesignThemesData {
  final bool isDark;
  final ColorData colorsSystem;
  final ImagesData imagesSystem;
  final ScreenData screenData;
  const DesignThemesData._({
    required this.colorsSystem,
    required this.imagesSystem,
    required this.isDark,
    required this.screenData,
  });

  factory DesignThemesData.light() => DesignThemesData._(
        isDark: false,
        colorsSystem: ColorData.light(),
        imagesSystem: ImagesData.create(),
        screenData: ScreenData.create(),
      );

  factory DesignThemesData.dark() => DesignThemesData._(
        isDark: true,
        colorsSystem: ColorData.dark(),
        imagesSystem: ImagesData.create(),
        screenData: ScreenData.create(),
      );
}
