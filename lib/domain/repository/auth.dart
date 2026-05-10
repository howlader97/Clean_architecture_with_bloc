import 'package:auth_bloc_clean_architecture/data/models/sign_in_params.dart';
import 'package:dartz/dartz.dart';

import '../../data/models/sign_up_params.dart';

abstract class AuthRepository {
  Future<Either> signUp(SignUpParams signupRec);
  Future<Either> signIn(SignInParams signInParams);
}