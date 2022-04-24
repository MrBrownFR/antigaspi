import 'package:antigaspi/Pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    // ! Cette application ne peut afficher que des widgets Android Material
    MaterialApp(
      title: 'AntiGaspi LDV',
      home: const HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
    ),
  );
}
