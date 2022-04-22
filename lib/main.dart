import 'package:flutter/material.dart';
import 'Pages/home.dart';
import 'Pages/settings.dart';

void main() {
  runApp(MaterialApp(
    title: 'AntiGaspi LDV',
    home: Scaffold(
        appBar: AppBar(
          title: const Text('AntiGaspi LDV'),
        ),
        body: const Align(alignment: Alignment.bottomCenter, child: AppHome())),
    theme: ThemeData(
      primarySwatch: Colors.red,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    darkTheme: ThemeData.dark(),
    themeMode: ThemeMode.light,
  ));
}
