// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_character.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DestinyCharacter> _$destinyCharacterSerializer =
    new _$DestinyCharacterSerializer();

class _$DestinyCharacterSerializer
    implements StructuredSerializer<DestinyCharacter> {
  @override
  final Iterable<Type> types = const [DestinyCharacter, _$DestinyCharacter];
  @override
  final String wireName = 'DestinyCharacter';

  @override
  Iterable<Object?> serialize(Serializers serializers, DestinyCharacter object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'characterId',
      serializers.serialize(object.characterId,
          specifiedType: const FullType(String)),
      'dateLastPlayed',
      serializers.serialize(object.dateLastPlayed,
          specifiedType: const FullType(String)),
      'minutesPlayedTotal',
      serializers.serialize(object.minutesPlayedTotal,
          specifiedType: const FullType(String)),
      'light',
      serializers.serialize(object.light, specifiedType: const FullType(int)),
      'stats',
      serializers.serialize(object.stats,
          specifiedType: const FullType(
              BuiltMap, const [const FullType(String), const FullType(int)])),
      'classType',
      serializers.serialize(object.classType,
          specifiedType: const FullType(int)),
      'emblemPath',
      serializers.serialize(object.emblemPath,
          specifiedType: const FullType(String)),
      'emblemBackgroundPath',
      serializers.serialize(object.emblemBackgroundPath,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.minutesPlayedThisSession;
    if (value != null) {
      result
        ..add('minutesPlayedThisSession')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.titleRecordHash;
    if (value != null) {
      result
        ..add('titleRecordHash')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  DestinyCharacter deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DestinyCharacterBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'characterId':
          result.characterId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'dateLastPlayed':
          result.dateLastPlayed = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'minutesPlayedThisSession':
          result.minutesPlayedThisSession = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'minutesPlayedTotal':
          result.minutesPlayedTotal = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'light':
          result.light = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'stats':
          result.stats.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap,
                  const [const FullType(String), const FullType(int)]))!);
          break;
        case 'classType':
          result.classType = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'emblemPath':
          result.emblemPath = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'emblemBackgroundPath':
          result.emblemBackgroundPath = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'titleRecordHash':
          result.titleRecordHash = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$DestinyCharacter extends DestinyCharacter {
  @override
  final String characterId;
  @override
  final String dateLastPlayed;
  @override
  final String? minutesPlayedThisSession;
  @override
  final String minutesPlayedTotal;
  @override
  final int light;
  @override
  final BuiltMap<String, int> stats;
  @override
  final int classType;
  @override
  final String emblemPath;
  @override
  final String emblemBackgroundPath;
  @override
  final int? titleRecordHash;

  factory _$DestinyCharacter(
          [void Function(DestinyCharacterBuilder)? updates]) =>
      (new DestinyCharacterBuilder()..update(updates))._build();

  _$DestinyCharacter._(
      {required this.characterId,
      required this.dateLastPlayed,
      this.minutesPlayedThisSession,
      required this.minutesPlayedTotal,
      required this.light,
      required this.stats,
      required this.classType,
      required this.emblemPath,
      required this.emblemBackgroundPath,
      this.titleRecordHash})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        characterId, r'DestinyCharacter', 'characterId');
    BuiltValueNullFieldError.checkNotNull(
        dateLastPlayed, r'DestinyCharacter', 'dateLastPlayed');
    BuiltValueNullFieldError.checkNotNull(
        minutesPlayedTotal, r'DestinyCharacter', 'minutesPlayedTotal');
    BuiltValueNullFieldError.checkNotNull(light, r'DestinyCharacter', 'light');
    BuiltValueNullFieldError.checkNotNull(stats, r'DestinyCharacter', 'stats');
    BuiltValueNullFieldError.checkNotNull(
        classType, r'DestinyCharacter', 'classType');
    BuiltValueNullFieldError.checkNotNull(
        emblemPath, r'DestinyCharacter', 'emblemPath');
    BuiltValueNullFieldError.checkNotNull(
        emblemBackgroundPath, r'DestinyCharacter', 'emblemBackgroundPath');
  }

  @override
  DestinyCharacter rebuild(void Function(DestinyCharacterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DestinyCharacterBuilder toBuilder() =>
      new DestinyCharacterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DestinyCharacter &&
        characterId == other.characterId &&
        dateLastPlayed == other.dateLastPlayed &&
        minutesPlayedThisSession == other.minutesPlayedThisSession &&
        minutesPlayedTotal == other.minutesPlayedTotal &&
        light == other.light &&
        stats == other.stats &&
        classType == other.classType &&
        emblemPath == other.emblemPath &&
        emblemBackgroundPath == other.emblemBackgroundPath &&
        titleRecordHash == other.titleRecordHash;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc(0, characterId.hashCode),
                                        dateLastPlayed.hashCode),
                                    minutesPlayedThisSession.hashCode),
                                minutesPlayedTotal.hashCode),
                            light.hashCode),
                        stats.hashCode),
                    classType.hashCode),
                emblemPath.hashCode),
            emblemBackgroundPath.hashCode),
        titleRecordHash.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DestinyCharacter')
          ..add('characterId', characterId)
          ..add('dateLastPlayed', dateLastPlayed)
          ..add('minutesPlayedThisSession', minutesPlayedThisSession)
          ..add('minutesPlayedTotal', minutesPlayedTotal)
          ..add('light', light)
          ..add('stats', stats)
          ..add('classType', classType)
          ..add('emblemPath', emblemPath)
          ..add('emblemBackgroundPath', emblemBackgroundPath)
          ..add('titleRecordHash', titleRecordHash))
        .toString();
  }
}

class DestinyCharacterBuilder
    implements Builder<DestinyCharacter, DestinyCharacterBuilder> {
  _$DestinyCharacter? _$v;

  String? _characterId;
  String? get characterId => _$this._characterId;
  set characterId(String? characterId) => _$this._characterId = characterId;

  String? _dateLastPlayed;
  String? get dateLastPlayed => _$this._dateLastPlayed;
  set dateLastPlayed(String? dateLastPlayed) =>
      _$this._dateLastPlayed = dateLastPlayed;

  String? _minutesPlayedThisSession;
  String? get minutesPlayedThisSession => _$this._minutesPlayedThisSession;
  set minutesPlayedThisSession(String? minutesPlayedThisSession) =>
      _$this._minutesPlayedThisSession = minutesPlayedThisSession;

  String? _minutesPlayedTotal;
  String? get minutesPlayedTotal => _$this._minutesPlayedTotal;
  set minutesPlayedTotal(String? minutesPlayedTotal) =>
      _$this._minutesPlayedTotal = minutesPlayedTotal;

  int? _light;
  int? get light => _$this._light;
  set light(int? light) => _$this._light = light;

  MapBuilder<String, int>? _stats;
  MapBuilder<String, int> get stats =>
      _$this._stats ??= new MapBuilder<String, int>();
  set stats(MapBuilder<String, int>? stats) => _$this._stats = stats;

  int? _classType;
  int? get classType => _$this._classType;
  set classType(int? classType) => _$this._classType = classType;

  String? _emblemPath;
  String? get emblemPath => _$this._emblemPath;
  set emblemPath(String? emblemPath) => _$this._emblemPath = emblemPath;

  String? _emblemBackgroundPath;
  String? get emblemBackgroundPath => _$this._emblemBackgroundPath;
  set emblemBackgroundPath(String? emblemBackgroundPath) =>
      _$this._emblemBackgroundPath = emblemBackgroundPath;

  int? _titleRecordHash;
  int? get titleRecordHash => _$this._titleRecordHash;
  set titleRecordHash(int? titleRecordHash) =>
      _$this._titleRecordHash = titleRecordHash;

  DestinyCharacterBuilder();

  DestinyCharacterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _characterId = $v.characterId;
      _dateLastPlayed = $v.dateLastPlayed;
      _minutesPlayedThisSession = $v.minutesPlayedThisSession;
      _minutesPlayedTotal = $v.minutesPlayedTotal;
      _light = $v.light;
      _stats = $v.stats.toBuilder();
      _classType = $v.classType;
      _emblemPath = $v.emblemPath;
      _emblemBackgroundPath = $v.emblemBackgroundPath;
      _titleRecordHash = $v.titleRecordHash;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DestinyCharacter other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DestinyCharacter;
  }

  @override
  void update(void Function(DestinyCharacterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DestinyCharacter build() => _build();

  _$DestinyCharacter _build() {
    _$DestinyCharacter _$result;
    try {
      _$result = _$v ??
          new _$DestinyCharacter._(
              characterId: BuiltValueNullFieldError.checkNotNull(
                  characterId, r'DestinyCharacter', 'characterId'),
              dateLastPlayed: BuiltValueNullFieldError.checkNotNull(
                  dateLastPlayed, r'DestinyCharacter', 'dateLastPlayed'),
              minutesPlayedThisSession: minutesPlayedThisSession,
              minutesPlayedTotal: BuiltValueNullFieldError.checkNotNull(
                  minutesPlayedTotal, r'DestinyCharacter', 'minutesPlayedTotal'),
              light: BuiltValueNullFieldError.checkNotNull(
                  light, r'DestinyCharacter', 'light'),
              stats: stats.build(),
              classType: BuiltValueNullFieldError.checkNotNull(
                  classType, r'DestinyCharacter', 'classType'),
              emblemPath: BuiltValueNullFieldError.checkNotNull(
                  emblemPath, r'DestinyCharacter', 'emblemPath'),
              emblemBackgroundPath: BuiltValueNullFieldError.checkNotNull(
                  emblemBackgroundPath,
                  r'DestinyCharacter',
                  'emblemBackgroundPath'),
              titleRecordHash: titleRecordHash);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'stats';
        stats.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DestinyCharacter', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
