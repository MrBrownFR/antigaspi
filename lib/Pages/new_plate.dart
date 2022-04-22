import 'package:flutter/material.dart';

class NewPlate extends StatelessWidget {
  const NewPlate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Ajouter un nouveau plat'),
      ),
      body: const Text('Hello NewPlate'),
    );
  }
}
