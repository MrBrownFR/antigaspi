import 'package:antigaspi/Pages/home.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      // ! Cette application ne peut afficher que des widgets Android Material
      title: 'AntiGaspi LDV',
      home: const HomePage(),
      theme: _themeLight,
      darkTheme: _themeDark,
      themeMode: ThemeMode.system,
    ),
  );
}

final ThemeData _themeLight = ThemeData(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: Colors.red,
    brightness: Brightness.light,
  ),
  toggleableActiveColor: Colors.red,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  useMaterial3: true,
);

final ThemeData _themeDark = ThemeData(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: Colors.red,
    primaryColorDark: Colors.red,
    brightness: Brightness.dark,
  ),
  visualDensity: VisualDensity.adaptivePlatformDensity,
  useMaterial3: true,
);

getTheme() {
  SharedPreferences prefs =
      SharedPreferences.getInstance() as SharedPreferences;
  String mode = prefs.getString('thememode') ?? 'système';
  return mode;
}

ThemeMode thememode(String mode) {
  switch (mode) {
    case 'système':
      return ThemeMode.system;
    case 'clair':
      return ThemeMode.light;
    case 'sombre':
      return ThemeMode.dark;
    default:
      return ThemeMode.system;
  }
}
