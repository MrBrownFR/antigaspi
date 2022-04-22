import 'package:antigaspi/Pages/home.dart';
import 'package:flutter/material.dart';
import 'Tools/add_button.dart';
import 'Tools/settings_button.dart';

void main() {
  runApp(MaterialApp(
    title: 'AntiGaspi LDV',
    home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('AntiGaspi LDV'),
        actions: [
          settingsButton(),
        ],
      ),
      body: const HomePage(),
      floatingActionButton: addButton(),
    ),
    theme: ThemeData(
      primarySwatch: Colors.red,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    darkTheme: ThemeData.dark(),
    themeMode: ThemeMode.system,
  ));
}
