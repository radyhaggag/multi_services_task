import '../../config/injector_container.dart';
import 'data/datasources/home_remote_data_source.dart';
import 'data/repositories/home_repo.dart';
import 'presentation/bloc/home_bloc.dart';

initHome() {
  sl.registerLazySingleton(() => HomeRemoteDataSource(sl()));

  sl.registerLazySingleton(() => HomeRepo(sl()));

  sl.registerFactory(() => HomeBloc(homeRepo: sl()));
}
