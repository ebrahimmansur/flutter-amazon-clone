// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:amazon_clone_app/src/common/design.system/colors.data.dart';

import 'images.data.dart';

class ThemesData {
  final ColorData colorsSystem;
  final ImagesData imagesSystem;
  const ThemesData._({
    required this.colorsSystem,
    required this.imagesSystem,
  });

  factory ThemesData.light() => ThemesData._(
        colorsSystem: ColorData.light(),
        imagesSystem: ImagesData.create(),
      );
}
