import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'item_component.g.dart';

abstract class ItemComponent implements Built<ItemComponent, ItemComponentBuilder> {
  static Serializer<ItemComponent> get serializer => _$itemComponentSerializer;

  int get itemHash;

  int get bucketHash;

  ItemComponent._();
  factory ItemComponent([void Function(ItemComponentBuilder) updates]) = _$ItemComponent;
}