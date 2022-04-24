import 'package:flutter/material.dart';

class TypePlatePicker extends StatefulWidget {
  const TypePlatePicker({Key? key}) : super(key: key);

  @override
  State<TypePlatePicker> createState() => _TypePlatePickerState();
}

class _TypePlatePickerState extends State<TypePlatePicker> {
  // ignore: prefer_typing_uninitialized_variables
  var plateType;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      hint: const Text('Choisissez un type de plat'),
      items: const [
        DropdownMenuItem(
          child: Text('Entrée'),
          value: 'Entrée',
        ),
        DropdownMenuItem(
          child: Text('Plat'),
          value: 'Plat',
        ),
        DropdownMenuItem(
          child: Text('Fromage'),
          value: 'Fromage',
        ),
        DropdownMenuItem(
          child: Text('Dessert'),
          value: 'Dessert',
        ),
        DropdownMenuItem(
          child: Text('Accompagnement'),
          value: 'Accompagnement',
        ),
      ],
      onChanged: (value) {
        setState(
          () {
            plateType = value.toString();
          },
        );
      },
      value: plateType,
    );
  }
}
