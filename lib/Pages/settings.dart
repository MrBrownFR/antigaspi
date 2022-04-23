import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Paramètres'),
        ),
        body: AppleSignInIconButton());
    ;
  }
}
