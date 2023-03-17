// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:amazon_clone_app/src/common/design.system/theme.data.dart';
import 'theme.preference.broker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DesignSystemCubit extends Cubit<DesignSystemCubitState> {
  DesignSystemCubit() : super(DesignSystemCubitState.light());

  Future<void> switchToLight() async {
    await ThemePreferencesBroker.saveAsLightTheme();
    if (!isClosed) {
      emit(DesignSystemCubitState.light());
    }
  }

  Future<void> switchToDark() async {
    await ThemePreferencesBroker.saveAsDarkTheme();
    if (!isClosed) {
      emit(DesignSystemCubitState.dark());
    }
  }

  Future<void> loadTheme() async {
    final isDark = await ThemePreferencesBroker.loadTheme;

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
