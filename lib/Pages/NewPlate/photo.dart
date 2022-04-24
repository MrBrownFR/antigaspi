import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class photoPicker extends StatefulWidget {
  photoPicker({Key? key}) : super(key: key);

  @override
  State<photoPicker> createState() => _photoPickerState();
}

class _photoPickerState extends State<photoPicker> {
  File? image;

  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;

      final imageTemporary = File(image.path);
      setState(() => this.image = imageTemporary);
    } on PlatformException catch (e) {
      print("Erreur lors de la capture de l'image : $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: image != null
          ? Image.file(image!)
          : ElevatedButton(
              onPressed: () {
                pickImage(ImageSource.camera);
              },
              child: const Text('Ajouter une photo'),
            ),
    );
  }
}
