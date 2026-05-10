import 'package:auth_bloc_clean_architecture/data/models/sign_up_params.dart';
import 'package:auth_bloc_clean_architecture/domain/repository/auth.dart';
import 'package:auth_bloc_clean_architecture/service_locator.dart';
import 'package:dartz/dartz.dart';

import '../../core/usecase/usecase.dart';

class SignUpUseCase implements UseCase<Either, SignUpParams> {
  @override
  Future<Either> call({SignUpParams? param}) {
    return sl<AuthRepository>().signUp(param!);
  }
}