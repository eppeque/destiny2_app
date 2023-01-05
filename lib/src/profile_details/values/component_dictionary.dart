import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:destiny2_app/src/profile_details/values/inventory_component.dart';

part 'component_dictionary.g.dart';

abstract class ComponentDictionary implements Built<ComponentDictionary, ComponentDictionaryBuilder> {
  static Serializer<ComponentDictionary> get serializer => _$componentDictionarySerializer;

  BuiltMap<String, InventoryComponent> get data;

  ComponentDictionary._();
  factory ComponentDictionary([void Function(ComponentDictionaryBuilder) updates]) = _$ComponentDictionary;
}