import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:destiny2_app/src/profile_details/values/title_info.dart';

part 'destiny_record_definition.g.dart';

abstract class DestinyRecordDefinition implements Built<DestinyRecordDefinition, DestinyRecordDefinitionBuilder> {
  static Serializer<DestinyRecordDefinition> get serializer => _$destinyRecordDefinitionSerializer;

  TitleInfo get titleInfo;

  bool get forTitleGilding;

  DestinyRecordDefinition._();
  factory DestinyRecordDefinition([void Function(DestinyRecordDefinitionBuilder) updates]) = _$DestinyRecordDefinition;
}