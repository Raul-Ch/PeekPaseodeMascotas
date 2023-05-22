import 'package:flutter/material.dart';
import 'package:peek_app/presentation/login_screen/login_screen.dart';
import 'package:peek_app/presentation/welcome_screen/welcome_screen.dart';
import 'package:peek_app/presentation/registro_screen/registro_screen.dart';
import 'package:peek_app/presentation/registro_duenio_screen/registro_duenio_screen.dart';
import 'package:peek_app/presentation/registro_paseador_screen/registro_paseador_screen.dart';
import 'package:peek_app/presentation/olvidar_contrasenia_screen/olvidar_contrasenia_screen.dart';
import 'package:peek_app/presentation/registro_paseador_screen/registro_paseador_two_screen/registro_paseador_tarifa_screen/registro_paseador_tarifa_screen.dart';
import 'package:peek_app/presentation/registro_paseador_screen/registro_paseador_two_screen/registro_paseador_two_screen.dart';
import 'package:peek_app/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String loginScreen = '/login_screen';

  static const String welcomeScreen = '/welcome_screen';

  static const String registroScreen = '/registro_screen';

  static const String registroDuenioScreen = '/registro_duenio_screen';

  static const String registroPaseadorScreen = '/registro_paseador_screen';

  static const String olvidarContraseniaScreen = '/olvidar_contrasenia_screen';

  static const String registroPaseadorTarifaScreen =
      '/registro_paseador_tarifa_screen';

  static const String registroPaseadorTwoScreen =
      '/registro_paseador_two_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    loginScreen: (context) => LoginScreen(),
    welcomeScreen: (context) => WelcomeScreen(),
    registroScreen: (context) => RegistroScreen(),
    registroDuenioScreen: (context) => RegistroDuenioScreen(),
    registroPaseadorScreen: (context) => RegistroPaseadorScreen(),
    olvidarContraseniaScreen: (context) => OlvidarContraseniaScreen(),
    registroPaseadorTarifaScreen: (context) => RegistroPaseadorTarifaScreen(),
    registroPaseadorTwoScreen: (context) => RegistroPaseadorTwoScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
