// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userinfo_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserinfoResponse _$UserinfoResponseFromJson(Map<String, dynamic> json) =>
    UserinfoResponse(
      userId: json['UserID'] as int?,
      userName: json['UserName'] as String?,
      password: json['Password'] as String?,
      userType: json['UserType'] as String?,
      isActive: json['IsActive'] as bool?,
      staffId: json['StaffId'] as int?,
      modifiedOn: json['ModifiedOn'] == null
          ? null
          : DateTime.parse(json['ModifiedOn'] as String),
      isEncrypted: json['IsEncrypted'] as bool?,
      password1: json['Password1'] as String?,
      password2: json['Password2'] as String?,
      businessId: json['BusinessID'],
      staffCode: json['StaffCode'] as int?,
      staffNameEn: json['StaffNameEn'] as String?,
      staffNameAr: json['StaffNameAr'] as String?,
      defBranchId: json['DefBranchID'] as int?,
      defBranchName: json['DefBranchName'] as String?,
      defBranchCode: json['DefBranchCode'] as String?,
      isMainStore: json['IsMainStore'] as bool?,
    );

Map<String, dynamic> _$UserinfoResponseToJson(UserinfoResponse instance) =>
    <String, dynamic>{
      'UserID': instance.userId,
      'UserName': instance.userName,
      'Password': instance.password,
      'UserType': instance.userType,
      'IsActive': instance.isActive,
      'StaffId': instance.staffId,
      'ModifiedOn': instance.modifiedOn?.toIso8601String(),
      'IsEncrypted': instance.isEncrypted,
      'Password1': instance.password1,
      'Password2': instance.password2,
      'BusinessID': instance.businessId,
      'StaffCode': instance.staffCode,
      'StaffNameEn': instance.staffNameEn,
      'StaffNameAr': instance.staffNameAr,
      'DefBranchID': instance.defBranchId,
      'DefBranchName': instance.defBranchName,
      'DefBranchCode': instance.defBranchCode,
      'IsMainStore': instance.isMainStore,
    };
