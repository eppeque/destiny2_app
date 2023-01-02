// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserInfo> _$userInfoSerializer = new _$UserInfoSerializer();

class _$UserInfoSerializer implements StructuredSerializer<UserInfo> {
  @override
  final Iterable<Type> types = const [UserInfo, _$UserInfo];
  @override
  final String wireName = 'UserInfo';

  @override
  Iterable<Object?> serialize(Serializers serializers, UserInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.supplementalDisplayName;
    if (value != null) {
      result
        ..add('supplementalDisplayName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.iconPath;
    if (value != null) {
      result
        ..add('iconPath')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.crossSaveOverride;
    if (value != null) {
      result
        ..add('crossSaveOverride')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.applicableMembershipTypes;
    if (value != null) {
      result
        ..add('applicableMembershipTypes')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    value = object.isPublic;
    if (value != null) {
      result
        ..add('isPublic')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.membershipType;
    if (value != null) {
      result
        ..add('membershipType')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.membershipId;
    if (value != null) {
      result
        ..add('membershipId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('displayName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bungieGlobalDisplayName;
    if (value != null) {
      result
        ..add('bungieGlobalDisplayName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bungieGlobalDisplayNameCode;
    if (value != null) {
      result
        ..add('bungieGlobalDisplayNameCode')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  UserInfo deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'supplementalDisplayName':
          result.supplementalDisplayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'iconPath':
          result.iconPath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'crossSaveOverride':
          result.crossSaveOverride = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'applicableMembershipTypes':
          result.applicableMembershipTypes.replace(serializers.deserialize(
                  value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))!
              as BuiltList<Object?>);
          break;
        case 'isPublic':
          result.isPublic = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'membershipType':
          result.membershipType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'membershipId':
          result.membershipId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'displayName':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'bungieGlobalDisplayName':
          result.bungieGlobalDisplayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'bungieGlobalDisplayNameCode':
          result.bungieGlobalDisplayNameCode = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$UserInfo extends UserInfo {
  @override
  final String? supplementalDisplayName;
  @override
  final String? iconPath;
  @override
  final int? crossSaveOverride;
  @override
  final BuiltList<int>? applicableMembershipTypes;
  @override
  final bool? isPublic;
  @override
  final int? membershipType;
  @override
  final String? membershipId;
  @override
  final String? displayName;
  @override
  final String? bungieGlobalDisplayName;
  @override
  final int? bungieGlobalDisplayNameCode;

  factory _$UserInfo([void Function(UserInfoBuilder)? updates]) =>
      (new UserInfoBuilder()..update(updates))._build();

  _$UserInfo._(
      {this.supplementalDisplayName,
      this.iconPath,
      this.crossSaveOverride,
      this.applicableMembershipTypes,
      this.isPublic,
      this.membershipType,
      this.membershipId,
      this.displayName,
      this.bungieGlobalDisplayName,
      this.bungieGlobalDisplayNameCode})
      : super._();

  @override
  UserInfo rebuild(void Function(UserInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserInfoBuilder toBuilder() => new UserInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserInfo &&
        supplementalDisplayName == other.supplementalDisplayName &&
        iconPath == other.iconPath &&
        crossSaveOverride == other.crossSaveOverride &&
        applicableMembershipTypes == other.applicableMembershipTypes &&
        isPublic == other.isPublic &&
        membershipType == other.membershipType &&
        membershipId == other.membershipId &&
        displayName == other.displayName &&
        bungieGlobalDisplayName == other.bungieGlobalDisplayName &&
        bungieGlobalDisplayNameCode == other.bungieGlobalDisplayNameCode;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(0,
                                            supplementalDisplayName.hashCode),
                                        iconPath.hashCode),
                                    crossSaveOverride.hashCode),
                                applicableMembershipTypes.hashCode),
                            isPublic.hashCode),
                        membershipType.hashCode),
                    membershipId.hashCode),
                displayName.hashCode),
            bungieGlobalDisplayName.hashCode),
        bungieGlobalDisplayNameCode.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserInfo')
          ..add('supplementalDisplayName', supplementalDisplayName)
          ..add('iconPath', iconPath)
          ..add('crossSaveOverride', crossSaveOverride)
          ..add('applicableMembershipTypes', applicableMembershipTypes)
          ..add('isPublic', isPublic)
          ..add('membershipType', membershipType)
          ..add('membershipId', membershipId)
          ..add('displayName', displayName)
          ..add('bungieGlobalDisplayName', bungieGlobalDisplayName)
          ..add('bungieGlobalDisplayNameCode', bungieGlobalDisplayNameCode))
        .toString();
  }
}

class UserInfoBuilder implements Builder<UserInfo, UserInfoBuilder> {
  _$UserInfo? _$v;

  String? _supplementalDisplayName;
  String? get supplementalDisplayName => _$this._supplementalDisplayName;
  set supplementalDisplayName(String? supplementalDisplayName) =>
      _$this._supplementalDisplayName = supplementalDisplayName;

  String? _iconPath;
  String? get iconPath => _$this._iconPath;
  set iconPath(String? iconPath) => _$this._iconPath = iconPath;

  int? _crossSaveOverride;
  int? get crossSaveOverride => _$this._crossSaveOverride;
  set crossSaveOverride(int? crossSaveOverride) =>
      _$this._crossSaveOverride = crossSaveOverride;

  ListBuilder<int>? _applicableMembershipTypes;
  ListBuilder<int> get applicableMembershipTypes =>
      _$this._applicableMembershipTypes ??= new ListBuilder<int>();
  set applicableMembershipTypes(ListBuilder<int>? applicableMembershipTypes) =>
      _$this._applicableMembershipTypes = applicableMembershipTypes;

  bool? _isPublic;
  bool? get isPublic => _$this._isPublic;
  set isPublic(bool? isPublic) => _$this._isPublic = isPublic;

  int? _membershipType;
  int? get membershipType => _$this._membershipType;
  set membershipType(int? membershipType) =>
      _$this._membershipType = membershipType;

  String? _membershipId;
  String? get membershipId => _$this._membershipId;
  set membershipId(String? membershipId) => _$this._membershipId = membershipId;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _bungieGlobalDisplayName;
  String? get bungieGlobalDisplayName => _$this._bungieGlobalDisplayName;
  set bungieGlobalDisplayName(String? bungieGlobalDisplayName) =>
      _$this._bungieGlobalDisplayName = bungieGlobalDisplayName;

  int? _bungieGlobalDisplayNameCode;
  int? get bungieGlobalDisplayNameCode => _$this._bungieGlobalDisplayNameCode;
  set bungieGlobalDisplayNameCode(int? bungieGlobalDisplayNameCode) =>
      _$this._bungieGlobalDisplayNameCode = bungieGlobalDisplayNameCode;

  UserInfoBuilder();

  UserInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _supplementalDisplayName = $v.supplementalDisplayName;
      _iconPath = $v.iconPath;
      _crossSaveOverride = $v.crossSaveOverride;
      _applicableMembershipTypes = $v.applicableMembershipTypes?.toBuilder();
      _isPublic = $v.isPublic;
      _membershipType = $v.membershipType;
      _membershipId = $v.membershipId;
      _displayName = $v.displayName;
      _bungieGlobalDisplayName = $v.bungieGlobalDisplayName;
      _bungieGlobalDisplayNameCode = $v.bungieGlobalDisplayNameCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserInfo;
  }

  @override
  void update(void Function(UserInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserInfo build() => _build();

  _$UserInfo _build() {
    _$UserInfo _$result;
    try {
      _$result = _$v ??
          new _$UserInfo._(
              supplementalDisplayName: supplementalDisplayName,
              iconPath: iconPath,
              crossSaveOverride: crossSaveOverride,
              applicableMembershipTypes: _applicableMembershipTypes?.build(),
              isPublic: isPublic,
              membershipType: membershipType,
              membershipId: membershipId,
              displayName: displayName,
              bungieGlobalDisplayName: bungieGlobalDisplayName,
              bungieGlobalDisplayNameCode: bungieGlobalDisplayNameCode);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'applicableMembershipTypes';
        _applicableMembershipTypes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UserInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
