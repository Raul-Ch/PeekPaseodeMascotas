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
import 'package:peek_app/presentation/menu_duenio_screen/menu_duenio_screen.dart';
import 'package:peek_app/presentation/menu_paseador_screen/menu_paseador_screen.dart';

import '../presentation/comentarios_screen/comentarios_screen.dart';
import '../presentation/perfilmascota_screen/perfilmascota_screen.dart';
import '../presentation/perfilpaseador_screen/perfilpaseador_screen.dart';
import '../presentation/perfilduenio_screen/perfilduenio_screen.dart';

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

  static const String menuDuenioScreen = '/menu_duenio_screen';

  static const String menuPaseadorScreen = '/menu_paseador_screen';

  static const String comentariosScreen = '/comentarios_screen';

  static const String pefilpaseadorScreen = '/pefilpaseador_screen';

  static const String pefilduenioScreen = '/pefilduenio_screen';

  static const String pefilmascotaScreen = '/pefilmascota_screen';

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
    menuDuenioScreen: (context) => MenuDuenioScreen(),
    menuPaseadorScreen: (context) => MenuPaseadorScreen(),
    comentariosScreen: (context) => ComentariosScreen(),
    pefilpaseadorScreen: (context) => PefilpaseadorScreen(),
    pefilduenioScreen: (context) => PefilduenioScreen(),
    pefilmascotaScreen: (context) => PefilmascotaScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
