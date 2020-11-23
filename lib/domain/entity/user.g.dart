// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserRegisterRequest _$UserRegisterRequestFromJson(Map<String, dynamic> json) {
  return UserRegisterRequest(
    firebaseToken: json['firebaseToken'] as String,
    name: json['name'] as String,
    email: json['email'] as String,
    gender: json['gender'] as String,
    birthdate: json['birthdate'] as String,
    prefecture: json['prefecture'] as String,
    matchingReason: json['matchingReason'] as String,
    profile: json['profile'] as String,
  );
}

Map<String, dynamic> _$UserRegisterRequestToJson(
        UserRegisterRequest instance) =>
    <String, dynamic>{
      'firebaseToken': instance.firebaseToken,
      'name': instance.name,
      'email': instance.email,
      'gender': instance.gender,
      'birthdate': instance.birthdate,
      'prefecture': instance.prefecture,
      'matchingReason': instance.matchingReason,
      'profile': instance.profile,
    };
