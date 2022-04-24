// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import '../../Pages/new_plate.dart';

class addButton extends StatefulWidget {
  const addButton({Key? key}) : super(key: key);

  @override
  State<addButton> createState() => _addButtonState();
}

class _addButtonState extends State<addButton> {
  @override
  Widget build(BuildContext context) {
    // Affichage un bouton qui flotte au-dessus du body actuel
    return FloatingActionButton(
      onPressed: () {
        // Navigue vers la page NewPlate
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const NewPlate(),
          ),
        );
      },
      // Affiche l'icône du bouton +
      child: const Icon(Icons.add),
    );
  }
}
