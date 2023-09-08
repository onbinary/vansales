import 'package:json_annotation/json_annotation.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  @JsonKey(name: 'Token')
  String? token;
  @JsonKey(name: 'ExpiresInhrs')
  int? expiresInhrs;
  @JsonKey(name: 'StatusCode')
  int? statusCode;
  @JsonKey(name: 'UserID')
  int? userId;
  @JsonKey(name: 'StatusMessage')
  String? statusMessage;

  LoginResponse({
    this.token,
    this.expiresInhrs,
    this.statusCode,
    this.userId,
    this.statusMessage,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return _$LoginResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}
