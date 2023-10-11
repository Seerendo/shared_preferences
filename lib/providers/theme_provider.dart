import 'package:flutter/material.dart';

//Clase junto con providers para el control de estado del Theme de la aplicación
class ThemeProvider extends ChangeNotifier {
  ThemeData currentTheme;

  ThemeProvider({
    required bool isDarkmode,
  }): currentTheme = isDarkmode ? ThemeData.dark() : ThemeData.light();

  setLightMode() {
    currentTheme = ThemeData.light();
    notifyListeners();
  }

  setDarkmode() {
    currentTheme = ThemeData.dark();
    notifyListeners();
  }
}