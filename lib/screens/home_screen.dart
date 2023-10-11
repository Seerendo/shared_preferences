import 'package:flutter/material.dart';
import 'package:share_preferences_app/share_preferences/preferences.dart';
import 'package:share_preferences_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const String routerName = 'Home';

  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
      ),
      drawer: const SideMenu(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Darkmode: ${Preferences.isDarkmode}'),
          const Divider(),
          Text('Género: ${Preferences.gender}'),
          const Divider(),
          Text('Nombre de usuario: ${Preferences.name}'),
        ],
      )
    );
  }
}