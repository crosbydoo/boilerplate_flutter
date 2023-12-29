import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'package:boilerplate_flutter/core/env/env_config.dart';
import 'package:boilerplate_flutter/core/service/dio_service.dart';
import 'package:boilerplate_flutter/core/shared/prefs/shared_preferences.dart';

final sl = GetIt.instance;

class Injections {
  Future<void> init() async {
    final config = await EnvConfig.getInstance();
    final prefs = await SharedPrefs.getInstance();

    // main, prefs, dio, etc
    sl
      ..registerLazySingleton(() => config)
      ..registerLazySingleton(() => prefs)
      ..registerLazySingleton<Dio>(() => sl<DioHandler>().dio)
      ..registerLazySingleton(
        () => DioHandler(
          config: sl<EnvConfig>(),
          preferences: sl<SharedPrefs>(),
        ),
      );

    // AUTH
    // ..registerLazySingleton<AuthRemoteDatasource>(
    //   () => AuthRemoteDatasourceImpl(sl<Dio>()),
    // )
    // ..registerLazySingleton<AuthLocalDataSource>(
    //   () => AuthLocalDataSourceImpl(sl<SharedPrefs>()),
    // )
    // ..registerLazySingleton<AuthRepository>(
    //   () => AuthRepositoryImpl(
    //     sl<AuthRemoteDatasource>(),
    //     sl<AuthLocalDataSource>(),
    //   ),
    // )
    // ..registerLazySingleton(() => LoginUsecase(sl()))
    // ..registerLazySingleton(() => RegisterUsecase(sl()))
    // ..registerFactory(
    //   () => AuthCubit(
    //     sl(),
    //     sl(),
    //   ),
    // );
  }
}
