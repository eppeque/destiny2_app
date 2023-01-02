import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_info.g.dart';

abstract class UserInfo implements Built<UserInfo, UserInfoBuilder> {
  static Serializer<UserInfo> get serializer => _$userInfoSerializer;

  String? get supplementalDisplayName;

  String? get iconPath;

  int? get membershipType;

  String? get membershipId;

  String? get displayName;

  String? get bungieGlobalDisplayName;

  int? get bungieGlobalDisplayNameCode;

  UserInfo._();
  factory UserInfo([void Function(UserInfoBuilder) updates]) = _$UserInfo;
}