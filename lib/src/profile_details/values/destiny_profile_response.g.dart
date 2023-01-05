// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_profile_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DestinyProfileResponse> _$destinyProfileResponseSerializer =
    new _$DestinyProfileResponseSerializer();

class _$DestinyProfileResponseSerializer
    implements StructuredSerializer<DestinyProfileResponse> {
  @override
  final Iterable<Type> types = const [
    DestinyProfileResponse,
    _$DestinyProfileResponse
  ];
  @override
  final String wireName = 'DestinyProfileResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, DestinyProfileResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'characters',
      serializers.serialize(object.characters,
          specifiedType: const FullType(CharacterDictionary)),
      'characterInventories',
      serializers.serialize(object.characterInventories,
          specifiedType: const FullType(ComponentDictionary)),
      'characterEquipment',
      serializers.serialize(object.characterEquipment,
          specifiedType: const FullType(ComponentDictionary)),
    ];

    return result;
  }

  @override
  DestinyProfileResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DestinyProfileResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'characters':
          result.characters.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CharacterDictionary))!
              as CharacterDictionary);
          break;
        case 'characterInventories':
          result.characterInventories.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ComponentDictionary))!
              as ComponentDictionary);
          break;
        case 'characterEquipment':
          result.characterEquipment.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ComponentDictionary))!
              as ComponentDictionary);
          break;
      }
    }

    return result.build();
  }
}

class _$DestinyProfileResponse extends DestinyProfileResponse {
  @override
  final CharacterDictionary characters;
  @override
  final ComponentDictionary characterInventories;
  @override
  final ComponentDictionary characterEquipment;

  factory _$DestinyProfileResponse(
          [void Function(DestinyProfileResponseBuilder)? updates]) =>
      (new DestinyProfileResponseBuilder()..update(updates))._build();

  _$DestinyProfileResponse._(
      {required this.characters,
      required this.characterInventories,
      required this.characterEquipment})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        characters, r'DestinyProfileResponse', 'characters');
    BuiltValueNullFieldError.checkNotNull(characterInventories,
        r'DestinyProfileResponse', 'characterInventories');
    BuiltValueNullFieldError.checkNotNull(
        characterEquipment, r'DestinyProfileResponse', 'characterEquipment');
  }

  @override
  DestinyProfileResponse rebuild(
          void Function(DestinyProfileResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DestinyProfileResponseBuilder toBuilder() =>
      new DestinyProfileResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DestinyProfileResponse &&
        characters == other.characters &&
        characterInventories == other.characterInventories &&
        characterEquipment == other.characterEquipment;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, characters.hashCode), characterInventories.hashCode),
        characterEquipment.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DestinyProfileResponse')
          ..add('characters', characters)
          ..add('characterInventories', characterInventories)
          ..add('characterEquipment', characterEquipment))
        .toString();
  }
}

class DestinyProfileResponseBuilder
    implements Builder<DestinyProfileResponse, DestinyProfileResponseBuilder> {
  _$DestinyProfileResponse? _$v;

  CharacterDictionaryBuilder? _characters;
  CharacterDictionaryBuilder get characters =>
      _$this._characters ??= new CharacterDictionaryBuilder();
  set characters(CharacterDictionaryBuilder? characters) =>
      _$this._characters = characters;

  ComponentDictionaryBuilder? _characterInventories;
  ComponentDictionaryBuilder get characterInventories =>
      _$this._characterInventories ??= new ComponentDictionaryBuilder();
  set characterInventories(ComponentDictionaryBuilder? characterInventories) =>
      _$this._characterInventories = characterInventories;

  ComponentDictionaryBuilder? _characterEquipment;
  ComponentDictionaryBuilder get characterEquipment =>
      _$this._characterEquipment ??= new ComponentDictionaryBuilder();
  set characterEquipment(ComponentDictionaryBuilder? characterEquipment) =>
      _$this._characterEquipment = characterEquipment;

  DestinyProfileResponseBuilder();

  DestinyProfileResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _characters = $v.characters.toBuilder();
      _characterInventories = $v.characterInventories.toBuilder();
      _characterEquipment = $v.characterEquipment.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DestinyProfileResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DestinyProfileResponse;
  }

  @override
  void update(void Function(DestinyProfileResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DestinyProfileResponse build() => _build();

  _$DestinyProfileResponse _build() {
    _$DestinyProfileResponse _$result;
    try {
      _$result = _$v ??
          new _$DestinyProfileResponse._(
              characters: characters.build(),
              characterInventories: characterInventories.build(),
              characterEquipment: characterEquipment.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'characters';
        characters.build();
        _$failedField = 'characterInventories';
        characterInventories.build();
        _$failedField = 'characterEquipment';
        characterEquipment.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DestinyProfileResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
