import 'package:bloc1/bloc/authentication_Event.dart';
import 'package:bloc1/bloc/authentication_state.dart';
import 'package:bloc1/services/authentication.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../user.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final AuthService authService = AuthService();

  AuthenticationBloc() : super(AuthenticationInitialState()) {
    on<AuthenticationEvent>((event, emit) {});

    on<SignUpUser>((event, emit) async {
      emit(AuthenticationLoadingState(isLoading: true));
      try {
        final UserModel? user =
            await authService.signUpUser(event.email, event.password);
        if (user != null) {
          emit(AuthenticationSuccessState(user: user));
        } else {
          emit(AuthenticationFailureState(errorMessage: 'create user failed'));
        }
      } catch (e) {
        print(e.toString());
      }
      emit(AuthenticationLoadingState(isLoading: false));
    });

    on<SignOut>((event, emit) async {
      emit(AuthenticationLoadingState(isLoading: true));
      try {
        authService.signOutUser();
      } catch (e) {
        print('error');
        print(e.toString());
      }
      emit(AuthenticationLoadingState(isLoading: false));
    });
  }
}
