// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'component_dictionary.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ComponentDictionary> _$componentDictionarySerializer =
    new _$ComponentDictionarySerializer();

class _$ComponentDictionarySerializer
    implements StructuredSerializer<ComponentDictionary> {
  @override
  final Iterable<Type> types = const [
    ComponentDictionary,
    _$ComponentDictionary
  ];
  @override
  final String wireName = 'ComponentDictionary';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ComponentDictionary object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(BuiltMap, const [
            const FullType(String),
            const FullType(InventoryComponent)
          ])),
    ];

    return result;
  }

  @override
  ComponentDictionary deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ComponentDictionaryBuilder();

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
                const FullType(InventoryComponent)
              ]))!);
          break;
      }
    }

    return result.build();
  }
}

class _$ComponentDictionary extends ComponentDictionary {
  @override
  final BuiltMap<String, InventoryComponent> data;

  factory _$ComponentDictionary(
          [void Function(ComponentDictionaryBuilder)? updates]) =>
      (new ComponentDictionaryBuilder()..update(updates))._build();

  _$ComponentDictionary._({required this.data}) : super._() {
    BuiltValueNullFieldError.checkNotNull(data, r'ComponentDictionary', 'data');
  }

  @override
  ComponentDictionary rebuild(
          void Function(ComponentDictionaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ComponentDictionaryBuilder toBuilder() =>
      new ComponentDictionaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ComponentDictionary && data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc(0, data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ComponentDictionary')
          ..add('data', data))
        .toString();
  }
}

class ComponentDictionaryBuilder
    implements Builder<ComponentDictionary, ComponentDictionaryBuilder> {
  _$ComponentDictionary? _$v;

  MapBuilder<String, InventoryComponent>? _data;
  MapBuilder<String, InventoryComponent> get data =>
      _$this._data ??= new MapBuilder<String, InventoryComponent>();
  set data(MapBuilder<String, InventoryComponent>? data) => _$this._data = data;

  ComponentDictionaryBuilder();

  ComponentDictionaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ComponentDictionary other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ComponentDictionary;
  }

  @override
  void update(void Function(ComponentDictionaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ComponentDictionary build() => _build();

  _$ComponentDictionary _build() {
    _$ComponentDictionary _$result;
    try {
      _$result = _$v ?? new _$ComponentDictionary._(data: data.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ComponentDictionary', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
