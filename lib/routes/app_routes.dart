import 'package:flutter/material.dart';
import 'package:peek_app/pages/login_screen/login_screen.dart';
import 'package:peek_app/pages/welcome_screen/welcome_screen.dart';
import 'package:peek_app/pages/registro_screen/registro_screen.dart';
import 'package:peek_app/pages/registro_duenio_screen/registro_duenio_screen.dart';
import 'package:peek_app/pages/registro_paseador_screen/registro_paseador_screen.dart';
import 'package:peek_app/pages/olvidar_contrasenia_screen/olvidar_contrasenia_screen.dart';
import 'package:peek_app/pages/registro_paseador_tarifa_screen/registro_paseador_tarifa_screen.dart';
import 'package:peek_app/pages/registro_paseador_two_screen/registro_paseador_two_screen.dart';
import 'package:peek_app/pages/app_navigation_screen/app_navigation_screen.dart';

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

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        loginScreen: LoginScreen.builder,
        welcomeScreen: WelcomeScreen.builder,
        registroScreen: RegistroScreen.builder,
        registroDuenioScreen: RegistroDuenioScreen.builder,
        registroPaseadorScreen: RegistroPaseadorScreen.builder,
        olvidarContraseniaScreen: OlvidarContraseniaScreen.builder,
        registroPaseadorTarifaScreen: RegistroPaseadorTarifaScreen.builder,
        registroPaseadorTwoScreen: RegistroPaseadorTwoScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: WelcomeScreen.builder
      };
}
