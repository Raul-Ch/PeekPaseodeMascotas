// ignore_for_file: must_be_immutable

part of 'registro_duenio_bloc.dart';

class RegistroDuenioState extends Equatable {
  RegistroDuenioState({
    this.emailController,
    this.firstnameController,
    this.lastnameController,
    this.lastnameoneController,
    this.passwordController,
    this.confirmpasswordController,
    this.phoneController,
    this.zipcodeController,
    this.streetnumberController,
    this.streetController,
    this.municipalityController,
    this.cityController,
    this.registroDuenioModelObj,
  });

  TextEditingController? emailController;

  TextEditingController? firstnameController;

  TextEditingController? lastnameController;

  TextEditingController? lastnameoneController;

  TextEditingController? passwordController;

  TextEditingController? confirmpasswordController;

  TextEditingController? phoneController;

  TextEditingController? zipcodeController;

  TextEditingController? streetnumberController;

  TextEditingController? streetController;

  TextEditingController? municipalityController;

  TextEditingController? cityController;

  RegistroDuenioModel? registroDuenioModelObj;

  @override
  List<Object?> get props => [
        emailController,
        firstnameController,
        lastnameController,
        lastnameoneController,
        passwordController,
        confirmpasswordController,
        phoneController,
        zipcodeController,
        streetnumberController,
        streetController,
        municipalityController,
        cityController,
        registroDuenioModelObj,
      ];
  RegistroDuenioState copyWith({
    TextEditingController? emailController,
    TextEditingController? firstnameController,
    TextEditingController? lastnameController,
    TextEditingController? lastnameoneController,
    TextEditingController? passwordController,
    TextEditingController? confirmpasswordController,
    TextEditingController? phoneController,
    TextEditingController? zipcodeController,
    TextEditingController? streetnumberController,
    TextEditingController? streetController,
    TextEditingController? municipalityController,
    TextEditingController? cityController,
    RegistroDuenioModel? registroDuenioModelObj,
  }) {
    return RegistroDuenioState(
      emailController: emailController ?? this.emailController,
      firstnameController: firstnameController ?? this.firstnameController,
      lastnameController: lastnameController ?? this.lastnameController,
      lastnameoneController:
          lastnameoneController ?? this.lastnameoneController,
      passwordController: passwordController ?? this.passwordController,
      confirmpasswordController:
          confirmpasswordController ?? this.confirmpasswordController,
      phoneController: phoneController ?? this.phoneController,
      zipcodeController: zipcodeController ?? this.zipcodeController,
      streetnumberController:
          streetnumberController ?? this.streetnumberController,
      streetController: streetController ?? this.streetController,
      municipalityController:
          municipalityController ?? this.municipalityController,
      cityController: cityController ?? this.cityController,
      registroDuenioModelObj:
          registroDuenioModelObj ?? this.registroDuenioModelObj,
    );
  }
}
