import 'package:auth_bloc_clean_architecture/data/models/sign_in_params.dart';
import 'package:auth_bloc_clean_architecture/data/models/sign_up_params.dart';
import 'package:auth_bloc_clean_architecture/data/source/auth_api_service.dart';
import 'package:auth_bloc_clean_architecture/service_locator.dart';
import 'package:dartz/dartz.dart';
import '../../domain/repository/auth.dart';

class AuthRepositoryImpl extends AuthRepository {
  @override
  Future<Either> signUp(SignUpParams signupRec) {
    return sl<AuthApiService>().signUp(signupRec);
  }

  @override
  Future<Either> signIn(SignInParams signInParams) {
    return sl<AuthApiService>().signIn(signInParams);
  }
}