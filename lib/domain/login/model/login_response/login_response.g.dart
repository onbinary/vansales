// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    LoginResponse(
      token: json['Token'] as String?,
      expiresInhrs: json['ExpiresInhrs'] as int?,
      statusCode: json['StatusCode'] as int?,
      userId: json['UserID'] as int?,
      statusMessage: json['StatusMessage'] as String?,
    );

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
    <String, dynamic>{
      'Token': instance.token,
      'ExpiresInhrs': instance.expiresInhrs,
      'StatusCode': instance.statusCode,
      'UserID': instance.userId,
      'StatusMessage': instance.statusMessage,
    };
