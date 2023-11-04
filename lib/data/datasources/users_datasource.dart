import 'package:dio/dio.dart';
import 'package:ui_task/constants/constants.dart';
import 'package:ui_task/data/models/user_model.dart';

List<UserModel> _usersRepo = [];

class UsersDatasource {
  //? this will load all users from the api in the form of dart models
  Future<List<UserModel>> getUsers() async {
    if (_usersRepo.isNotEmpty) return _usersRepo;
    Dio dio = Dio();
    var res = await dio.get(Constants.apiLink);
    var body = res.data as List;
    var models = body.map((e) => UserModel.fromJson(e)).toList();
    _usersRepo = models;
    return models;
  }
}
