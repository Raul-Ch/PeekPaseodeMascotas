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

import '../presentation/buscarpaseador_screen/buscarpaseador_screen.dart';
import '../presentation/comentarios_screen/comentarios_screen.dart';
import '../presentation/paseosmenupasedor_screen/paseosmenupaseador_screen.dart';
import '../presentation/paseosmenuduenio_screen/paseosmenuduenio_screen.dart';
import '../presentation/perfilmascota_screen/perfilmascota_screen.dart';
import '../presentation/perfilpaseador_screen/perfilpaseador_screen.dart';
import '../presentation/perfilduenio_screen/perfilduenio_screen.dart';
import '../presentation/perfilpaseadorcitas_screen/perfilpaseadorcitas_screen.dart';
import '../presentation/vercomentarios_screen/vercomentarios_screen.dart';

class AppRoutes {
  //Inicio
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

//Menu
  static const String menuDuenioScreen = '/menu_duenio_screen';

  static const String menuPaseadorScreen = '/menu_paseador_screen';

  static const String comentariosScreen = '/comentarios_screen';

  static const String perfilpaseadorScreen = '/perfilpaseador_screen';

  static const String perfilduenioScreen = '/perfilduenio_screen';

  static const String perfilmascotaScreen = '/perfilmascota_screen';

//Paseos
  static const String buscarpaseadorScreen = '/buscarpaseador_screen';

  static const String paseosmenuduenioScreen = '/paseosmenuduenio_screen';

  static const String paseosmenupaseadorScreen = '/paseosmenupaseador_screen';

  static const String perfilpaseadorcitasScreen = '/perfilpaseadorcitas_screen';

  static const String vercomentariosScreen = '/vercomentarios_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    loginScreen: (context) => const LoginScreen(),
    welcomeScreen: (context) => const WelcomeScreen(),
    registroScreen: (context) => const RegistroScreen(),
    registroDuenioScreen: (context) => const RegistroDuenioScreen(),
    registroPaseadorScreen: (context) => const RegistroPaseadorScreen(),
    olvidarContraseniaScreen: (context) => const OlvidarContraseniaScreen(),
    registroPaseadorTarifaScreen: (context) =>
        const RegistroPaseadorTarifaScreen(),
    registroPaseadorTwoScreen: (context) => const RegistroPaseadorTwoScreen(),

    //Menu
    menuDuenioScreen: (context) => const MenuDuenioScreen(),
    menuPaseadorScreen: (context) => const MenuPaseadorScreen(),
    comentariosScreen: (context) => ComentariosScreen(),
    perfilpaseadorScreen: (context) => PerfilpaseadorScreen(),
    perfilduenioScreen: (context) => PerfilduenioScreen(),
    perfilmascotaScreen: (context) => PerfilmascotaScreen(),

    //Paseos
    paseosmenuduenioScreen: (context) => PaseosmenuduenioScreen(),
    buscarpaseadorScreen: (context) => BuscarpaseadorScreen(),
    paseosmenupaseadorScreen: (context) => PaseosmenupaseadorScreen(),
    perfilpaseadorcitasScreen: (context) => PerfilpaseadorcitasScreen(),
    vercomentariosScreen: (context) => VercomentariosScreen(),

    appNavigationScreen: (context) => const AppNavigationScreen()
  };
}
