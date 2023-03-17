import 'package:shared_preferences/shared_preferences.dart';

abstract class ThemePreferencesBroker {
  static const String _kThemePreferenceKey = "Theme";
  const ThemePreferencesBroker._();

  static Future<void> saveAsLightTheme() async =>
      (await SharedPreferences.getInstance())
          .setBool(_kThemePreferenceKey, false);

  static Future<void> saveAsDarkTheme() async =>
      (await SharedPreferences.getInstance())
          .setBool(_kThemePreferenceKey, true);

  static Future<bool> get loadTheme async =>
      (await SharedPreferences.getInstance()).getBool(_kThemePreferenceKey) ??
      false;
}
