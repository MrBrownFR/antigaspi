import 'package:flutter/material.dart';

class SpotPicker extends StatefulWidget {
  SpotPicker({Key? key}) : super(key: key);

  @override
  State<SpotPicker> createState() => _SpotPickerState();
}

class _SpotPickerState extends State<SpotPicker> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextFormField(
        decoration: const InputDecoration(
          label: Text('Où êtes-vous assis ?'),
          // TODO: Vérifier le contenu du champ
        ),
      ),
    );
  }
}
