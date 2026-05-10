import 'package:auth_bloc_clean_architecture/core/constant/api_url.dart';
import 'package:auth_bloc_clean_architecture/core/network/dio_client.dart';
import 'package:auth_bloc_clean_architecture/data/models/sign_in_params.dart';
import 'package:auth_bloc_clean_architecture/service_locator.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../models/sign_up_params.dart';

abstract class AuthApiService {
  Future<Either> signUp(SignUpParams signupRec);
  Future<Either> signIn(SignInParams signInParams);
}

class AuthApiServiceImpl extends AuthApiService {
  @override
  Future<Either> signUp(SignUpParams signupRec) async {
    try {
      var response = await sl<DioClient>().post(ApiUrls.register, data: signupRec.toMap());
      return Right(response);
    } on DioException catch (e) {
      return left(e.response?.data['message'] ?? "An error occurred");
    }
  }

  @override
  Future<Either> signIn(SignInParams signInParams) async {
    try {
      var response = await sl<DioClient>().post(ApiUrls.login, data: signInParams.toMap());
      return Right(response);
    } on DioException catch (e) {
      return left(e.response?.data['message'] ?? "An error occurred");
    }
  }
}