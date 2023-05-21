// ignore_for_file: must_be_immutable

part of 'registro_paseador_bloc.dart';

class RegistroPaseadorState extends Equatable {
  RegistroPaseadorState({
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
    this.registroPaseadorModelObj,
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

  RegistroPaseadorModel? registroPaseadorModelObj;

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
        registroPaseadorModelObj,
      ];
  RegistroPaseadorState copyWith({
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
    RegistroPaseadorModel? registroPaseadorModelObj,
  }) {
    return RegistroPaseadorState(
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
      registroPaseadorModelObj:
          registroPaseadorModelObj ?? this.registroPaseadorModelObj,
    );
  }
}
