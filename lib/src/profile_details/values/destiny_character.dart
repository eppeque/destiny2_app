import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'destiny_character.g.dart';

abstract class DestinyCharacter implements Built<DestinyCharacter, DestinyCharacterBuilder> {
  static Serializer<DestinyCharacter> get serializer => _$destinyCharacterSerializer;

  String get characterId;

  String get dateLastPlayed;

  String? get minutesPlayedThisSession;

  String get minutesPlayedTotal;

  int get light;

  BuiltMap<String, int> get stats;

  int get classType;

  String get emblemPath;

  String get emblemBackgroundPath;

  @nullable
  int? get titleRecordHash;

  DestinyCharacter._();
  factory DestinyCharacter([void Function(DestinyCharacterBuilder) updates]) = _$DestinyCharacter;
}

enum Stat {
  mobility('Mobility'),
  resilience('Resilience'),
  recovery('Recovery'),
  discipline('Discipline'),
  intellect('Intellect'),
  strength('Strength');

  const Stat(this.name);
  final String name;

  factory Stat.fromHash(String hash) {
    switch (hash) {
      case '2996146975':
        return Stat.mobility;
      case '392767087':
        return Stat.resilience;
      case '1943323491':
        return Stat.recovery;
      case '1735777505':
        return Stat.discipline;
      case '144602215':
        return Stat.intellect;
      default:
        return Stat.strength;
    }
  }
}

enum Class {
  titan('Titan'),
  hunter('Hunter'),
  warlock('Warlock');

  final String name;
  const Class(this.name);

  factory Class.fromType(int classType) => Class.values[classType];
}