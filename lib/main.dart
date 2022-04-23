import 'package:antigaspi/Pages/home.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
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

getTheme() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.getString('thememode') ?? 'ThemeMode.system';
}
