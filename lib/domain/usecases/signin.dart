import 'package:auth_bloc_clean_architecture/data/models/sign_in_params.dart';
import 'package:auth_bloc_clean_architecture/domain/repository/auth.dart';
import 'package:auth_bloc_clean_architecture/service_locator.dart';
import 'package:dartz/dartz.dart';

import '../../core/usecase/usecase.dart';

class SignInUseCase implements UseCase<Either, SignInParams> {
  @override
  Future<Either> call({SignInParams? param}) {
    return sl<AuthRepository>().signIn(param!);
  }
}
