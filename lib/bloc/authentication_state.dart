import 'package:bloc1/user.dart';

abstract class AuthenticationState {
  const AuthenticationState();
  List<Object> get props => [];
}

class AuthenticationInitialState extends AuthenticationState {}

class AuthenticationLoadingState extends AuthenticationState {
  final bool isLoading;
  AuthenticationLoadingState({required this.isLoading});
}

class AuthenticationSuccessState extends AuthenticationState {
  final UserModel user;
  const AuthenticationSuccessState({required this.user});

  @override
  List<Object> get props => [user];
}

class AuthenticationFailureState extends AuthenticationState {
  final String errorMessage;
  AuthenticationFailureState({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}
