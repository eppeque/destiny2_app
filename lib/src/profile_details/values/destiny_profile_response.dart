import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:destiny2_app/src/profile_details/values/character_dictionary.dart';
import 'package:destiny2_app/src/profile_details/values/component_dictionary.dart';

part 'destiny_profile_response.g.dart';

abstract class DestinyProfileResponse implements Built<DestinyProfileResponse, DestinyProfileResponseBuilder> {
  static Serializer<DestinyProfileResponse> get serializer => _$destinyProfileResponseSerializer;

  CharacterDictionary get characters;

  ComponentDictionary get characterInventories;

  ComponentDictionary get characterEquipment;

  DestinyProfileResponse._();
  factory DestinyProfileResponse([void Function(DestinyProfileResponseBuilder) updates]) = _$DestinyProfileResponse;
}