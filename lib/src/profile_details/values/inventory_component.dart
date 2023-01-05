import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:destiny2_app/src/profile_details/values/item_component.dart';

part 'inventory_component.g.dart';

abstract class InventoryComponent implements Built<InventoryComponent, InventoryComponentBuilder> {
  static Serializer<InventoryComponent> get serializer => _$inventoryComponentSerializer;

  BuiltList<ItemComponent> get items;

  InventoryComponent._();
  factory InventoryComponent([void Function(InventoryComponentBuilder) updates]) = _$InventoryComponent;
}