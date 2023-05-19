import 'package:flutter/material.dart';
//import 'package:peek/presentation/olvidar_contrase_a_three_screen/olvidar_contrase_a_three_screen.dart';
import 'package:peek_app/pages/welcome_screen/welcome_screen.dart';
//import 'package:peek/presentation/login_screen/login_screen.dart';
//import 'package:peek/presentation/registro_screen/registro_screen.dart';
//import 'package:peek/presentation/registro_due_o_screen/registro_due_o_screen.dart';
//import 'package:peek/presentation/registro_paseador_screen/registro_paseador_screen.dart';
//import 'package:peek/presentation/olvidar_contrase_a_screen/olvidar_contrase_a_screen.dart';
//import 'package:peek/presentation/registro_due_o_two_screen/registro_due_o_two_screen.dart';
//import 'package:peek/presentation/registro_paseador_two_screen/registro_paseador_two_screen.dart';
//import 'package:peek/presentation/olvidar_contrase_a_two_screen/olvidar_contrase_a_two_screen.dart';
//import 'package:peek/presentation/registro_paseador_four_screen/registro_paseador_four_screen.dart';
//import 'package:peek/presentation/registro_paseador_five_screen/registro_paseador_five_screen.dart';
import 'package:peek_app/pages/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String olvidarContraseAThreeScreen =
      '/olvidar_contrase_a_three_screen';

  static const String welcomeScreen = '/welcome_screen';

  static const String loginScreen = '/login_screen';

  static const String registroScreen = '/registro_screen';

  static const String registroDueOScreen = '/registro_due_o_screen';

  static const String registroPaseadorScreen = '/registro_paseador_screen';

  static const String olvidarContraseAScreen = '/olvidar_contrase_a_screen';

  static const String registroDueOTwoScreen = '/registro_due_o_two_screen';

  static const String registroPaseadorTwoScreen =
      '/registro_paseador_two_screen';

  static const String olvidarContraseATwoScreen =
      '/olvidar_contrase_a_two_screen';

  static const String registroPaseadorFourScreen =
      '/registro_paseador_four_screen';

  static const String registroPaseadorFiveScreen =
      '/registro_paseador_five_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        //olvidarContraseAThreeScreen: OlvidarContraseAThreeScreen.builder,
        welcomeScreen: WelcomeScreen.builder,
        //loginScreen: LoginScreen.builder,
        //registroScreen: RegistroScreen.builder,
        //registroDueOScreen: RegistroDueOScreen.builder,
        //registroPaseadorScreen: RegistroPaseadorScreen.builder,
        //olvidarContraseAScreen: OlvidarContraseAScreen.builder,
        //registroDueOTwoScreen: RegistroDueOTwoScreen.builder,
        //registroPaseadorTwoScreen: RegistroPaseadorTwoScreen.builder,
        //olvidarContraseATwoScreen: OlvidarContraseATwoScreen.builder,
        //registroPaseadorFourScreen: RegistroPaseadorFourScreen.builder,
        //registroPaseadorFiveScreen: RegistroPaseadorFiveScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: WelcomeScreen.builder
      };
}
