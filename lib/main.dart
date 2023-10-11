import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:share_preferences_app/providers/theme_provider.dart';
import 'package:share_preferences_app/screens/screens.dart';
import 'package:share_preferences_app/share_preferences/preferences.dart';

//Aunque el build siempre es asíncrono se puede usar este método de llamado del main para poder usar el async
void main() async {
  //Necesario en las nuevas versiones de Flutter si deseas usar shared_preferences
  WidgetsFlutterBinding.ensureInitialized();
  //Llamado de las preferencias
  await Preferences.init();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: ( _ ) => ThemeProvider(isDarkmode: Preferences.isDarkmode))
      ],
      child: const MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routerName,
      routes: {
        HomeScreen.routerName: (_) => const HomeScreen(),
        SettingsScreen.routerName: (_) => const SettingsScreen(),
      },
      theme: Provider.of<ThemeProvider>(context).currentTheme,
    );
  }
}