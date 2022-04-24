// ignore_for_file: camel_case_types

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class photoPicker extends StatefulWidget {
  const photoPicker({Key? key}) : super(key: key);

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
      if (kDebugMode) {
        print("Erreur lors de la capture de l'image : $e");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return image != null
        ? SizedBox(
            child: Image.file(image!),
            height: 300,
            width: 300,
          )
        : Center(
            child: ElevatedButton(
              onPressed: () {
                pickImage(ImageSource.camera);
              },
              child: SizedBox(
                child: Row(
                  children: const <Widget>[
                    Icon(Icons.camera_alt_outlined),
                    Expanded(
                      child: Text(
                        'Ajouter une photo',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}
