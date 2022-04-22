import 'package:flutter/material.dart';

class addButton extends StatefulWidget {
  addButton({Key? key}) : super(key: key);

  @override
  State<addButton> createState() => _addButtonState();
}

class _addButtonState extends State<addButton> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      child: const Icon(Icons.add),
    );
  }
}

void onPressed(args) {
  // Code to execute when FloatingActionButton is clicked
}
