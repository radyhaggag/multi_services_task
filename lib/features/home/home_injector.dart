import '../../config/injector_container.dart';
import 'presentation/bloc/home_bloc.dart';

initHome() {
  sl.registerFactory(() => HomeBloc());
}
