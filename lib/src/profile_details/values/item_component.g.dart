// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_component.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ItemComponent> _$itemComponentSerializer =
    new _$ItemComponentSerializer();

class _$ItemComponentSerializer implements StructuredSerializer<ItemComponent> {
  @override
  final Iterable<Type> types = const [ItemComponent, _$ItemComponent];
  @override
  final String wireName = 'ItemComponent';

  @override
  Iterable<Object?> serialize(Serializers serializers, ItemComponent object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'itemHash',
      serializers.serialize(object.itemHash,
          specifiedType: const FullType(int)),
      'bucketHash',
      serializers.serialize(object.bucketHash,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  ItemComponent deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ItemComponentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'itemHash':
          result.itemHash = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'bucketHash':
          result.bucketHash = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$ItemComponent extends ItemComponent {
  @override
  final int itemHash;
  @override
  final int bucketHash;

  factory _$ItemComponent([void Function(ItemComponentBuilder)? updates]) =>
      (new ItemComponentBuilder()..update(updates))._build();

  _$ItemComponent._({required this.itemHash, required this.bucketHash})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        itemHash, r'ItemComponent', 'itemHash');
    BuiltValueNullFieldError.checkNotNull(
        bucketHash, r'ItemComponent', 'bucketHash');
  }

  @override
  ItemComponent rebuild(void Function(ItemComponentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ItemComponentBuilder toBuilder() => new ItemComponentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ItemComponent &&
        itemHash == other.itemHash &&
        bucketHash == other.bucketHash;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, itemHash.hashCode), bucketHash.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ItemComponent')
          ..add('itemHash', itemHash)
          ..add('bucketHash', bucketHash))
        .toString();
  }
}

class ItemComponentBuilder
    implements Builder<ItemComponent, ItemComponentBuilder> {
  _$ItemComponent? _$v;

  int? _itemHash;
  int? get itemHash => _$this._itemHash;
  set itemHash(int? itemHash) => _$this._itemHash = itemHash;

  int? _bucketHash;
  int? get bucketHash => _$this._bucketHash;
  set bucketHash(int? bucketHash) => _$this._bucketHash = bucketHash;

  ItemComponentBuilder();

  ItemComponentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _itemHash = $v.itemHash;
      _bucketHash = $v.bucketHash;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ItemComponent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ItemComponent;
  }

  @override
  void update(void Function(ItemComponentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ItemComponent build() => _build();

  _$ItemComponent _build() {
    final _$result = _$v ??
        new _$ItemComponent._(
            itemHash: BuiltValueNullFieldError.checkNotNull(
                itemHash, r'ItemComponent', 'itemHash'),
            bucketHash: BuiltValueNullFieldError.checkNotNull(
                bucketHash, r'ItemComponent', 'bucketHash'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
