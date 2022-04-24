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
    // Affiche un bouton dans la barre de titre
    return IconButton(
      // Affiche l'icône de paramètres
      icon: const Icon(Icons.settings),
      onPressed: () {
        // Navigue vers la page Settings
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const SettingsPage(),
          ),
        );
      },
      tooltip: 'Paramètres',
    );
  }
}
