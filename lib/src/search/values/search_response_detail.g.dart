// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_response_detail.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SearchResponseDetail> _$searchResponseDetailSerializer =
    new _$SearchResponseDetailSerializer();

class _$SearchResponseDetailSerializer
    implements StructuredSerializer<SearchResponseDetail> {
  @override
  final Iterable<Type> types = const [
    SearchResponseDetail,
    _$SearchResponseDetail
  ];
  @override
  final String wireName = 'SearchResponseDetail';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, SearchResponseDetail object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
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
    value = object.bungieNetMembershipId;
    if (value != null) {
      result
        ..add('bungieNetMembershipId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.destinyMemberships;
    if (value != null) {
      result
        ..add('destinyMemberships')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(UserInfo)])));
    }
    return result;
  }

  @override
  SearchResponseDetail deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SearchResponseDetailBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'bungieGlobalDisplayName':
          result.bungieGlobalDisplayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'bungieGlobalDisplayNameCode':
          result.bungieGlobalDisplayNameCode = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'bungieNetMembershipId':
          result.bungieNetMembershipId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'destinyMemberships':
          result.destinyMemberships.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(UserInfo)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$SearchResponseDetail extends SearchResponseDetail {
  @override
  final String? bungieGlobalDisplayName;
  @override
  final int? bungieGlobalDisplayNameCode;
  @override
  final String? bungieNetMembershipId;
  @override
  final BuiltList<UserInfo>? destinyMemberships;

  factory _$SearchResponseDetail(
          [void Function(SearchResponseDetailBuilder)? updates]) =>
      (new SearchResponseDetailBuilder()..update(updates))._build();

  _$SearchResponseDetail._(
      {this.bungieGlobalDisplayName,
      this.bungieGlobalDisplayNameCode,
      this.bungieNetMembershipId,
      this.destinyMemberships})
      : super._();

  @override
  SearchResponseDetail rebuild(
          void Function(SearchResponseDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchResponseDetailBuilder toBuilder() =>
      new SearchResponseDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchResponseDetail &&
        bungieGlobalDisplayName == other.bungieGlobalDisplayName &&
        bungieGlobalDisplayNameCode == other.bungieGlobalDisplayNameCode &&
        bungieNetMembershipId == other.bungieNetMembershipId &&
        destinyMemberships == other.destinyMemberships;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc(0, bungieGlobalDisplayName.hashCode),
                bungieGlobalDisplayNameCode.hashCode),
            bungieNetMembershipId.hashCode),
        destinyMemberships.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SearchResponseDetail')
          ..add('bungieGlobalDisplayName', bungieGlobalDisplayName)
          ..add('bungieGlobalDisplayNameCode', bungieGlobalDisplayNameCode)
          ..add('bungieNetMembershipId', bungieNetMembershipId)
          ..add('destinyMemberships', destinyMemberships))
        .toString();
  }
}

class SearchResponseDetailBuilder
    implements Builder<SearchResponseDetail, SearchResponseDetailBuilder> {
  _$SearchResponseDetail? _$v;

  String? _bungieGlobalDisplayName;
  String? get bungieGlobalDisplayName => _$this._bungieGlobalDisplayName;
  set bungieGlobalDisplayName(String? bungieGlobalDisplayName) =>
      _$this._bungieGlobalDisplayName = bungieGlobalDisplayName;

  int? _bungieGlobalDisplayNameCode;
  int? get bungieGlobalDisplayNameCode => _$this._bungieGlobalDisplayNameCode;
  set bungieGlobalDisplayNameCode(int? bungieGlobalDisplayNameCode) =>
      _$this._bungieGlobalDisplayNameCode = bungieGlobalDisplayNameCode;

  String? _bungieNetMembershipId;
  String? get bungieNetMembershipId => _$this._bungieNetMembershipId;
  set bungieNetMembershipId(String? bungieNetMembershipId) =>
      _$this._bungieNetMembershipId = bungieNetMembershipId;

  ListBuilder<UserInfo>? _destinyMemberships;
  ListBuilder<UserInfo> get destinyMemberships =>
      _$this._destinyMemberships ??= new ListBuilder<UserInfo>();
  set destinyMemberships(ListBuilder<UserInfo>? destinyMemberships) =>
      _$this._destinyMemberships = destinyMemberships;

  SearchResponseDetailBuilder();

  SearchResponseDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bungieGlobalDisplayName = $v.bungieGlobalDisplayName;
      _bungieGlobalDisplayNameCode = $v.bungieGlobalDisplayNameCode;
      _bungieNetMembershipId = $v.bungieNetMembershipId;
      _destinyMemberships = $v.destinyMemberships?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchResponseDetail other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SearchResponseDetail;
  }

  @override
  void update(void Function(SearchResponseDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SearchResponseDetail build() => _build();

  _$SearchResponseDetail _build() {
    _$SearchResponseDetail _$result;
    try {
      _$result = _$v ??
          new _$SearchResponseDetail._(
              bungieGlobalDisplayName: bungieGlobalDisplayName,
              bungieGlobalDisplayNameCode: bungieGlobalDisplayNameCode,
              bungieNetMembershipId: bungieNetMembershipId,
              destinyMemberships: _destinyMemberships?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'destinyMemberships';
        _destinyMemberships?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SearchResponseDetail', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
