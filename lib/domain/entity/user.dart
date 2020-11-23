import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class UserRegisterRequest {
  final String firebaseToken;
  final String name;
  final String email;
  final String gender;
  final String birthdate;
  final String prefecture;
  final String matchingReason;
  final String profile;
  UserRegisterRequest(
      {this.firebaseToken,
      this.name,
      this.email,
      this.gender,
      this.birthdate,
      this.prefecture,
      this.matchingReason,
      this.profile});
  factory UserRegisterRequest.fromJson(Map<String, dynamic> json) =>
      _$UserRegisterRequestFromJson(json);
  Map<String, dynamic> toJson() => _$UserRegisterRequestToJson(this);
}
