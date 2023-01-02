import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user.g.dart';

abstract class User implements Built<User, UserBuilder> {
  static Serializer<User> get serializer => _$userSerializer;

  String? get supplementalDisplayName;

  String? get iconPath;

  int? get crossSaveOverride;

  BuiltList<int>? get applicableMembershipTypes;

  bool? get isPublic;

  int? get membershipType;

  String? get membershipId;

  String? get displayName;

  String? get bungieGlobalDisplayName;

  int? get bungieGlobalDisplayNameCode;

  User._();
  factory User([void Function(UserBuilder) updates]) = _$User;
}