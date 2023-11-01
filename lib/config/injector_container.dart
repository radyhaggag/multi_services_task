import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../core/errors/api/dio_manager/api_consumer.dart';
import '../core/errors/api/dio_manager/dio_consumer.dart';
import '../features/home/home_injector.dart';

final sl = GetIt.instance; // Service Locator

initCore() {
  // Dio
  sl.registerLazySingleton<Dio>(() => Dio());
  sl.registerLazySingleton<LogInterceptor>(
    () => LogInterceptor(
      error: true,
      request: true,
      requestBody: true,
      requestHeader: true,
      responseBody: true,
      responseHeader: true,
    ),
  );

  // Dio Factory
  sl.registerLazySingleton<APIConsumer>(
    () => DioConsumer(dio: sl()),
  );
}

void initAppDependencies() {
  initCore();
  initHome();
}
