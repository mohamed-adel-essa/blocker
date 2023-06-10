import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '/core/app_export.dart';
import '/presentation/login_active_state_screen/models/login_active_state_model.dart';

part 'login_active_state_event.dart';
part 'login_active_state_state.dart';

class LoginActiveStateBloc
    extends Bloc<LoginActiveStateEvent, LoginActiveStateState> {
  LoginActiveStateBloc(LoginActiveStateState initialState)
      : super(initialState) {
    on<LoginActiveStateInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LoginActiveStateInitialEvent event,
    Emitter<LoginActiveStateState> emit,
  ) async {}
}
