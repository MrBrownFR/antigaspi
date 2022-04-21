import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'AntiGaspi LDV',
    home: Scaffold(
        appBar: AppBar(
          title: const Text('AntiGaspi LDV'),
        ),
        body: const Align(alignment: Alignment.bottomCenter, child: AppHome())),
    theme: ThemeData(
      primarySwatch: Colors.red,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    darkTheme: ThemeData.dark(),
    themeMode: ThemeMode.light,
  ));
}

class AppHome extends StatelessWidget {
  const AppHome({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Accueil',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add),
          label: 'Ajouter',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Rechercher',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Paramètres',
        ),
      ],
    );
  }
}
