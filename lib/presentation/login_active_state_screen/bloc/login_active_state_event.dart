// ignore_for_file: must_be_immutable

part of 'login_active_state_bloc.dart';

@immutable
abstract class LoginActiveStateEvent extends Equatable {}

class LoginActiveStateInitialEvent extends LoginActiveStateEvent {
  @override
  List<Object?> get props => [];
}
