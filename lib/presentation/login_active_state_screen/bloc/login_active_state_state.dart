// ignore_for_file: must_be_immutable

part of 'login_active_state_bloc.dart';

class LoginActiveStateState extends Equatable {
  LoginActiveStateState({this.loginActiveStateModelObj});

  LoginActiveStateModel? loginActiveStateModelObj;

  @override
  List<Object?> get props => [
        loginActiveStateModelObj,
      ];
  LoginActiveStateState copyWith(
      {LoginActiveStateModel? loginActiveStateModelObj}) {
    return LoginActiveStateState(
      loginActiveStateModelObj:
          loginActiveStateModelObj ?? this.loginActiveStateModelObj,
    );
  }
}
