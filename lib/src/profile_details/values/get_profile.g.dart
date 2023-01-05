// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_profile.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GetProfile> _$getProfileSerializer = new _$GetProfileSerializer();

class _$GetProfileSerializer implements StructuredSerializer<GetProfile> {
  @override
  final Iterable<Type> types = const [GetProfile, _$GetProfile];
  @override
  final String wireName = 'GetProfile';

  @override
  Iterable<Object?> serialize(Serializers serializers, GetProfile object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'Response',
      serializers.serialize(object.response,
          specifiedType: const FullType(DestinyProfileResponse)),
    ];

    return result;
  }

  @override
  GetProfile deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GetProfileBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Response':
          result.response.replace(serializers.deserialize(value,
                  specifiedType: const FullType(DestinyProfileResponse))!
              as DestinyProfileResponse);
          break;
      }
    }

    return result.build();
  }
}

class _$GetProfile extends GetProfile {
  @override
  final DestinyProfileResponse response;

  factory _$GetProfile([void Function(GetProfileBuilder)? updates]) =>
      (new GetProfileBuilder()..update(updates))._build();

  _$GetProfile._({required this.response}) : super._() {
    BuiltValueNullFieldError.checkNotNull(response, r'GetProfile', 'response');
  }

  @override
  GetProfile rebuild(void Function(GetProfileBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetProfileBuilder toBuilder() => new GetProfileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetProfile && response == other.response;
  }

  @override
  int get hashCode {
    return $jf($jc(0, response.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetProfile')
          ..add('response', response))
        .toString();
  }
}

class GetProfileBuilder implements Builder<GetProfile, GetProfileBuilder> {
  _$GetProfile? _$v;

  DestinyProfileResponseBuilder? _response;
  DestinyProfileResponseBuilder get response =>
      _$this._response ??= new DestinyProfileResponseBuilder();
  set response(DestinyProfileResponseBuilder? response) =>
      _$this._response = response;

  GetProfileBuilder();

  GetProfileBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _response = $v.response.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetProfile other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetProfile;
  }

  @override
  void update(void Function(GetProfileBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetProfile build() => _build();

  _$GetProfile _build() {
    _$GetProfile _$result;
    try {
      _$result = _$v ?? new _$GetProfile._(response: response.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'response';
        response.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetProfile', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
