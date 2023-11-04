import 'package:dio/dio.dart';
import 'package:ui_task/constants/constants.dart';
import 'package:ui_task/data/models/user_model.dart';

class UsersDatasource {
  Future<List<UserModel>> getUsers() async {
    Dio dio = Dio();
    var res = await dio.get(Constants.apiLink);
    var body = res.data as List;
    var models = body.map((e) => UserModel.fromJson(e)).toList();
    return models;
  }
}
