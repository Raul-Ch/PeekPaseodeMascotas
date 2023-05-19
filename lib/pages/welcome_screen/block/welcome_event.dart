// ignore_for_file: must_be_immutable

part of 'welcome_bloc.dart';

@immutable
abstract class WelcomeEvent extends Equatable {}

class WelcomeInitialEvent extends WelcomeEvent {
  @override
  List<Object?> get props => [];
}
