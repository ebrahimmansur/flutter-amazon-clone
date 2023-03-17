// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ColorData {
  final Color premier;
  final LinearGradient appBarLinerGradient;
  final Color secondary;
  final Color background;
  final Color grayBackground;
  final Color selectedNavBarColor;
  final Color unSelectedNavBarColor;
  const ColorData._({
    required this.premier,
    required this.appBarLinerGradient,
    required this.secondary,
    required this.background,
    required this.grayBackground,
    required this.selectedNavBarColor,
    required this.unSelectedNavBarColor,
  });

  factory ColorData.light() => ColorData._(
      premier: Colors.green,
      appBarLinerGradient: const LinearGradient(
        colors: [
          Color.fromARGB(255, 29, 201, 192),
          Color.fromARGB(255, 125, 221, 216),
        ],
        stops: [0.5, 1.0],
      ),
      secondary: const Color.fromRGBO(255, 153, 0, 1),
      background: Colors.white,
      grayBackground: const Color(0xffebecee),
      selectedNavBarColor: Colors.cyan[800]!,
      unSelectedNavBarColor: Colors.black87);

  factory ColorData.dark() => ColorData._(
      premier: Colors.pink,
      appBarLinerGradient: const LinearGradient(
        colors: [
          Color.fromARGB(255, 29, 201, 192),
          Color.fromARGB(255, 125, 221, 216),
        ],
        stops: [0.5, 1.0],
      ),
      secondary: const Color.fromRGBO(255, 153, 0, 1),
      background: Colors.white,
      grayBackground: const Color(0xffebecee),
      selectedNavBarColor: Colors.cyan[800]!,
      unSelectedNavBarColor: Colors.black87);
}
