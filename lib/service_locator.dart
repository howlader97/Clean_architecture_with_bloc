import 'package:auth_bloc_clean_architecture/core/network/dio_client.dart';
import 'package:auth_bloc_clean_architecture/data/repository/auth.dart';
import 'package:auth_bloc_clean_architecture/data/source/auth_api_service.dart';
import 'package:auth_bloc_clean_architecture/domain/repository/auth.dart';
import 'package:auth_bloc_clean_architecture/domain/usecases/signin.dart';
import 'package:auth_bloc_clean_architecture/domain/usecases/signup.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void setupServiceLocator() {
  sl.registerSingleton<DioClient>(DioClient());

  sl.registerSingleton<AuthApiService>(AuthApiServiceImpl());

  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl());

  sl.registerSingleton<SignUpUseCase>(SignUpUseCase());

  sl.registerSingleton<SignInUseCase>(SignInUseCase());
}