import 'package:antigaspi/Pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    // ! Cette application ne peut afficher que des widgets Android Material
    MaterialApp(
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
