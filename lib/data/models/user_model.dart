import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable(explicitToJson: true)
class UserModel {
  final int id;
  final String name;
  final String username;
  final String email;

  const UserModel({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
  });

//? these are the json serlization methods(to convert json objects from the api response into dart models)
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
