import 'package:json_annotation/json_annotation.dart';

part 'userinfo_response.g.dart';

@JsonSerializable()
class UserinfoResponse {
  @JsonKey(name: 'UserID')
  int? userId;
  @JsonKey(name: 'UserName')
  String? userName;
  @JsonKey(name: 'Password')
  String? password;
  @JsonKey(name: 'UserType')
  String? userType;
  @JsonKey(name: 'IsActive')
  bool? isActive;
  @JsonKey(name: 'StaffId')
  int? staffId;
  @JsonKey(name: 'ModifiedOn')
  DateTime? modifiedOn;
  @JsonKey(name: 'IsEncrypted')
  bool? isEncrypted;
  @JsonKey(name: 'Password1')
  String? password1;
  @JsonKey(name: 'Password2')
  String? password2;
  @JsonKey(name: 'BusinessID')
  dynamic businessId;
  @JsonKey(name: 'StaffCode')
  int? staffCode;
  @JsonKey(name: 'StaffNameEn')
  String? staffNameEn;
  @JsonKey(name: 'StaffNameAr')
  String? staffNameAr;
  @JsonKey(name: 'DefBranchID')
  int? defBranchId;
  @JsonKey(name: 'DefBranchName')
  String? defBranchName;
  @JsonKey(name: 'DefBranchCode')
  String? defBranchCode;
  @JsonKey(name: 'IsMainStore')
  bool? isMainStore;

  UserinfoResponse({
    this.userId,
    this.userName,
    this.password,
    this.userType,
    this.isActive,
    this.staffId,
    this.modifiedOn,
    this.isEncrypted,
    this.password1,
    this.password2,
    this.businessId,
    this.staffCode,
    this.staffNameEn,
    this.staffNameAr,
    this.defBranchId,
    this.defBranchName,
    this.defBranchCode,
    this.isMainStore,
  });

  factory UserinfoResponse.fromJson(Map<String, dynamic> json) {
    return _$UserinfoResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserinfoResponseToJson(this);
}
