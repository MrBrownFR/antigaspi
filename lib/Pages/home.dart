import 'package:flutter/material.dart';
import 'package:antigaspi/Tools/Home/add_button.dart';
import 'package:antigaspi/Tools/Home/settings_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  // * This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('AntiGaspi LDV'),
        actions: const [
          settingsButton(),
        ],
      ),
      body: const Text('Hello Home'),
      floatingActionButton: const addButton(),
    );
  }
}
