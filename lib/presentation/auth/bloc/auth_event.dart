import 'package:auth_bloc_clean_architecture/data/models/sign_in_params.dart';
import 'package:auth_bloc_clean_architecture/data/models/sign_up_params.dart';

abstract class AuthEvent {}

class SignupEvent extends AuthEvent {
  final SignUpParams signUpParams;

  SignupEvent({required this.signUpParams});
}

class SigninEvent extends AuthEvent {
  final SignInParams signInParams;

  SigninEvent({required this.signInParams});
}

class LogoutEvent extends AuthEvent {}
