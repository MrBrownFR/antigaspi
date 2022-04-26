// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class themeToggle extends StatefulWidget {
  const themeToggle({Key? key}) : super(key: key);

  @override
  State<themeToggle> createState() => _themeToggleState();
}

class _themeToggleState extends State<themeToggle> {
  // Set the theme according to the value of a dropdown list
  // The value is stored in SharedPreferences

  String _thememode = 'ThemeMode.system';

  @override
  void initState() {
    super.initState();
    _getTheme();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Expanded(
          child: Text('Thème'),
        ),
        DropdownButton(
          items: const [
            DropdownMenuItem(
              value: 'ThemeMode.light',
              child: Text('Clair'),
            ),
            DropdownMenuItem(
              value: 'ThemeMode.dark',
              child: Text('Sombre'),
            ),
            DropdownMenuItem(
              value: 'ThemeMode.system',
              child: Text('Système'),
            ),
          ],
          onChanged: (String? value) {
            setState(() {
              _thememode = value.toString();
            });
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                // TODO : implémenter le changement de thème
                content: const Text(
                    "La fonctionnalité n'est pas encore implémentée"),
                behavior: SnackBarBehavior.floating,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            );
            _setTheme();
          },
          value: _thememode,
        ),
      ],
    );
  }

  void _getTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _thememode = prefs.getString('thememode') ?? 'ThemeMode.system';
    });
  }

  void _setTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('thememode', _thememode);
  }
}
