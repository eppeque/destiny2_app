// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_component.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InventoryComponent> _$inventoryComponentSerializer =
    new _$InventoryComponentSerializer();

class _$InventoryComponentSerializer
    implements StructuredSerializer<InventoryComponent> {
  @override
  final Iterable<Type> types = const [InventoryComponent, _$InventoryComponent];
  @override
  final String wireName = 'InventoryComponent';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, InventoryComponent object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'items',
      serializers.serialize(object.items,
          specifiedType:
              const FullType(BuiltList, const [const FullType(ItemComponent)])),
    ];

    return result;
  }

  @override
  InventoryComponent deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InventoryComponentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'items':
          result.items.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ItemComponent)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$InventoryComponent extends InventoryComponent {
  @override
  final BuiltList<ItemComponent> items;

  factory _$InventoryComponent(
          [void Function(InventoryComponentBuilder)? updates]) =>
      (new InventoryComponentBuilder()..update(updates))._build();

  _$InventoryComponent._({required this.items}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        items, r'InventoryComponent', 'items');
  }

  @override
  InventoryComponent rebuild(
          void Function(InventoryComponentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InventoryComponentBuilder toBuilder() =>
      new InventoryComponentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InventoryComponent && items == other.items;
  }

  @override
  int get hashCode {
    return $jf($jc(0, items.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InventoryComponent')
          ..add('items', items))
        .toString();
  }
}

class InventoryComponentBuilder
    implements Builder<InventoryComponent, InventoryComponentBuilder> {
  _$InventoryComponent? _$v;

  ListBuilder<ItemComponent>? _items;
  ListBuilder<ItemComponent> get items =>
      _$this._items ??= new ListBuilder<ItemComponent>();
  set items(ListBuilder<ItemComponent>? items) => _$this._items = items;

  InventoryComponentBuilder();

  InventoryComponentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InventoryComponent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InventoryComponent;
  }

  @override
  void update(void Function(InventoryComponentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InventoryComponent build() => _build();

  _$InventoryComponent _build() {
    _$InventoryComponent _$result;
    try {
      _$result = _$v ?? new _$InventoryComponent._(items: items.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'InventoryComponent', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
