import 'package:auth_bloc_clean_architecture/domain/usecases/signin.dart';
import 'package:auth_bloc_clean_architecture/domain/usecases/signup.dart';
import 'package:auth_bloc_clean_architecture/presentation/auth/bloc/auth_event.dart';
import 'package:auth_bloc_clean_architecture/presentation/auth/bloc/auth_state.dart';
import 'package:auth_bloc_clean_architecture/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<SignupEvent>((event, emit) async {
      emit(AuthLoading());
      var result = await sl<SignUpUseCase>().call(param: event.signUpParams);
      result.fold(
        (error) => emit(AuthFailure(error: error)),
        (data) => emit(AuthSuccess(message: "Signup successful")),
      );
    });

    on<SigninEvent>((event, emit) async {
      emit(AuthLoading());
      var result = await sl<SignInUseCase>().call(param: event.signInParams);
      result.fold(
        (error) => emit(AuthFailure(error: error)),
        (data) => emit(AuthSuccess(message: "Login successful")),
      );
    });

    on<LogoutEvent>((event, emit) async {
      emit(AuthInitial());
    });
  }
}
