import 'package:antigaspi/Tools/Settings/notifications_toggle.dart';
import 'package:antigaspi/Tools/Settings/theme_toggle.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Paramètres'),
        ),
        body: Column(
          children: const [
            themeToggle(),
            Divider(),
            notifToggle(),
          ],
        ));
  }
}
