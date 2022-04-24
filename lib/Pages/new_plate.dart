import 'package:antigaspi/Tools/NewPlate/photo_picker.dart';
import 'package:antigaspi/Tools/NewPlate/typeplate_picker.dart';
import 'package:antigaspi/Tools/NewPlate/spot_picker.dart';
import 'package:antigaspi/Tools/NewPlate/send_button.dart';
import 'package:flutter/material.dart';

class NewPlate extends StatelessWidget {
  const NewPlate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ajouter un nouveau plat'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 0.5 * MediaQuery.of(context).size.width,
          margin: const EdgeInsets.symmetric(vertical: 100),
          child: ListView(
            children: const [
              photoPicker(),
              TypePlatePicker(),
              SpotPicker(),
            ],
          ),
        ),
      ),
      floatingActionButton: const SendButton(),
    );
  }
}
