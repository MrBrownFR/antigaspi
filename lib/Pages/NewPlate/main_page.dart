import 'package:flutter/material.dart';
import 'photo.dart';

class NewPlate extends StatelessWidget {
  const NewPlate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ajouter un nouveau plat'),
        centerTitle: true,
      ),
      body: photoPicker(),
    );
  }
}
