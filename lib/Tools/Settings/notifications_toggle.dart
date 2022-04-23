import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class notifToggle extends StatefulWidget {
  notifToggle({Key? key}) : super(key: key);

  @override
  State<notifToggle> createState() => _notifToggleState();
}

class _notifToggleState extends State<notifToggle> {
  bool _notif = false;

  @override
  void initState() {
    super.initState();
    _getNotif();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Expanded(
          child: Text('Notifications'),
        ),
        Switch(
            value: _notif,
            onChanged: (bool value) {
              setState(() {
                _notif = value;
                _setNotif();
              });
            }),
      ],
    );
  }

  void _getNotif() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _notif = prefs.getBool('notif') ?? false;
    });
  }

  void _setNotif() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('notif', _notif);
  }
}
