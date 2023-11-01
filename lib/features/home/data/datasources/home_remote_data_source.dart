import '../../../../core/errors/api/dio_manager/api_consumer.dart';
import '../models/user_model.dart';

class HomeRemoteDataSource {
  final APIConsumer apiConsumer;

  HomeRemoteDataSource(this.apiConsumer);

  Future<List<UserModel>> getUsers() async {
    final res = await apiConsumer.get(url: '/users');

    final result = (res.data as List).map((e) => UserModel.fromMap(e)).toList();

    return result;
  }
}
