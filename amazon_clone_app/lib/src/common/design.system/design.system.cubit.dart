// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:math';

import 'package:amazon_clone_app/src/common/design.system/theme.data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DesignSystemCubit extends Cubit<DesignSystemCubitState> {
  DesignSystemCubit() : super(DesignSystemCubitState.light());

  Future<void> switchToLight() async {
    //TODO: add the proces of stroing users preference.
    if (!isClosed) {
      emit(DesignSystemCubitState.light());
    }
  }

  Future<void> switchToDark() async {
    //TODO: add the proces of stroing users preference.
    if (!isClosed) {
      emit(DesignSystemCubitState.dark());
    }
  }

  Future<void> loadTheme() async {
    //TODO: add the proces of retriving user prefernce.
    await Future.delayed(const Duration(milliseconds: 300));

    final isDark = Random().nextBool();

    if (!isClosed) {
      emit(isDark
          ? DesignSystemCubitState.dark()
          : DesignSystemCubitState.light());
    }
  }
}

class DesignSystemCubitState {
  final DesignThemesData data;
  final ThemeData? light;
  final ThemeData? dark;
  final ThemeMode? themeMode;
  const DesignSystemCubitState._({
    required this.data,
    this.light,
    this.dark,
    this.themeMode,
  });

  factory DesignSystemCubitState.light() {
    final lightData = DesignThemesData.light();
    final lightTheme = ThemeData.light().copyWith(
      colorScheme: const ColorScheme.light().copyWith(
        primary: lightData.colorsSystem.premier,
        secondary: lightData.colorsSystem.secondary,
      ),
      appBarTheme: const AppBarTheme().copyWith(
          elevation: 0,
          iconTheme: const IconThemeData(
            color: Colors.black87,
          )),
    );
    return DesignSystemCubitState._(
      data: lightData,
      light: lightTheme,
      themeMode: ThemeMode.light,
    );
  }

  factory DesignSystemCubitState.dark() {
    final darkData = DesignThemesData.dark();
    final darkTheme = ThemeData.dark().copyWith(
      colorScheme: const ColorScheme.dark().copyWith(
        secondary: darkData.colorsSystem.secondary,
        primary: darkData.colorsSystem.premier,
      ),
      appBarTheme: const AppBarTheme().copyWith(
          elevation: 0,
          iconTheme: const IconThemeData(
            color: Colors.white,
          )),
    );
    return DesignSystemCubitState._(
      data: darkData,
      dark: darkTheme,
      themeMode: ThemeMode.dark,
    );
  }
}
