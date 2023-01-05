import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:destiny2_app/src/profile_details/values/destiny_character.dart';

part 'character_dictionary.g.dart';

abstract class CharacterDictionary implements Built<CharacterDictionary, CharacterDictionaryBuilder> {
  static Serializer<CharacterDictionary> get serializer => _$characterDictionarySerializer;

  BuiltMap<String, DestinyCharacter> get data;

  CharacterDictionary._();
  factory CharacterDictionary([void Function(CharacterDictionaryBuilder) updates]) = _$CharacterDictionary;
}