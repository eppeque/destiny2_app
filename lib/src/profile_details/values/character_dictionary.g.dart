// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_dictionary.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CharacterDictionary> _$characterDictionarySerializer =
    new _$CharacterDictionarySerializer();

class _$CharacterDictionarySerializer
    implements StructuredSerializer<CharacterDictionary> {
  @override
  final Iterable<Type> types = const [
    CharacterDictionary,
    _$CharacterDictionary
  ];
  @override
  final String wireName = 'CharacterDictionary';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, CharacterDictionary object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(BuiltMap, const [
            const FullType(String),
            const FullType(DestinyCharacter)
          ])),
    ];

    return result;
  }

  @override
  CharacterDictionary deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CharacterDictionaryBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(DestinyCharacter)
              ]))!);
          break;
      }
    }

    return result.build();
  }
}

class _$CharacterDictionary extends CharacterDictionary {
  @override
  final BuiltMap<String, DestinyCharacter> data;

  factory _$CharacterDictionary(
          [void Function(CharacterDictionaryBuilder)? updates]) =>
      (new CharacterDictionaryBuilder()..update(updates))._build();

  _$CharacterDictionary._({required this.data}) : super._() {
    BuiltValueNullFieldError.checkNotNull(data, r'CharacterDictionary', 'data');
  }

  @override
  CharacterDictionary rebuild(
          void Function(CharacterDictionaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CharacterDictionaryBuilder toBuilder() =>
      new CharacterDictionaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CharacterDictionary && data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc(0, data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CharacterDictionary')
          ..add('data', data))
        .toString();
  }
}

class CharacterDictionaryBuilder
    implements Builder<CharacterDictionary, CharacterDictionaryBuilder> {
  _$CharacterDictionary? _$v;

  MapBuilder<String, DestinyCharacter>? _data;
  MapBuilder<String, DestinyCharacter> get data =>
      _$this._data ??= new MapBuilder<String, DestinyCharacter>();
  set data(MapBuilder<String, DestinyCharacter>? data) => _$this._data = data;

  CharacterDictionaryBuilder();

  CharacterDictionaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CharacterDictionary other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CharacterDictionary;
  }

  @override
  void update(void Function(CharacterDictionaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CharacterDictionary build() => _build();

  _$CharacterDictionary _build() {
    _$CharacterDictionary _$result;
    try {
      _$result = _$v ?? new _$CharacterDictionary._(data: data.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CharacterDictionary', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
