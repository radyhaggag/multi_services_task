import 'package:dartz/dartz.dart';

import '../../../../core/errors/error_handler.dart';
import '../../../../core/errors/failure.dart';
import '../datasources/home_remote_data_source.dart';
import '../models/user_model.dart';

class HomeRepo {
  final HomeRemoteDataSource homeRemoteDataSource;

  HomeRepo(this.homeRemoteDataSource);

  Future<Either<Failure, List<UserModel>>> getUsers() async {
    try {
      final result = await homeRemoteDataSource.getUsers();

      return Right(result);
    } catch (e) {
      final failure = ErrorHandler.handle(e).failure;
      return Left(failure);
    }
  }
}
