import 'package:flutter/material.dart';
import '../Pages/settings.dart';

class settingsButton extends StatefulWidget {
  settingsButton({Key? key}) : super(key: key);

  @override
  State<settingsButton> createState() => _settingsButtonState();
}

class _settingsButtonState extends State<settingsButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.settings),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const SettingsPage(),
          ),
        );
      },
    );
  }
}
