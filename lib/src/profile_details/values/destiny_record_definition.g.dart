// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_record_definition.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DestinyRecordDefinition> _$destinyRecordDefinitionSerializer =
    new _$DestinyRecordDefinitionSerializer();

class _$DestinyRecordDefinitionSerializer
    implements StructuredSerializer<DestinyRecordDefinition> {
  @override
  final Iterable<Type> types = const [
    DestinyRecordDefinition,
    _$DestinyRecordDefinition
  ];
  @override
  final String wireName = 'DestinyRecordDefinition';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, DestinyRecordDefinition object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'titleInfo',
      serializers.serialize(object.titleInfo,
          specifiedType: const FullType(TitleInfo)),
      'forTitleGilding',
      serializers.serialize(object.forTitleGilding,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  DestinyRecordDefinition deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DestinyRecordDefinitionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'titleInfo':
          result.titleInfo.replace(serializers.deserialize(value,
              specifiedType: const FullType(TitleInfo))! as TitleInfo);
          break;
        case 'forTitleGilding':
          result.forTitleGilding = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$DestinyRecordDefinition extends DestinyRecordDefinition {
  @override
  final TitleInfo titleInfo;
  @override
  final bool forTitleGilding;

  factory _$DestinyRecordDefinition(
          [void Function(DestinyRecordDefinitionBuilder)? updates]) =>
      (new DestinyRecordDefinitionBuilder()..update(updates))._build();

  _$DestinyRecordDefinition._(
      {required this.titleInfo, required this.forTitleGilding})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        titleInfo, r'DestinyRecordDefinition', 'titleInfo');
    BuiltValueNullFieldError.checkNotNull(
        forTitleGilding, r'DestinyRecordDefinition', 'forTitleGilding');
  }

  @override
  DestinyRecordDefinition rebuild(
          void Function(DestinyRecordDefinitionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DestinyRecordDefinitionBuilder toBuilder() =>
      new DestinyRecordDefinitionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DestinyRecordDefinition &&
        titleInfo == other.titleInfo &&
        forTitleGilding == other.forTitleGilding;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, titleInfo.hashCode), forTitleGilding.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DestinyRecordDefinition')
          ..add('titleInfo', titleInfo)
          ..add('forTitleGilding', forTitleGilding))
        .toString();
  }
}

class DestinyRecordDefinitionBuilder
    implements
        Builder<DestinyRecordDefinition, DestinyRecordDefinitionBuilder> {
  _$DestinyRecordDefinition? _$v;

  TitleInfoBuilder? _titleInfo;
  TitleInfoBuilder get titleInfo =>
      _$this._titleInfo ??= new TitleInfoBuilder();
  set titleInfo(TitleInfoBuilder? titleInfo) => _$this._titleInfo = titleInfo;

  bool? _forTitleGilding;
  bool? get forTitleGilding => _$this._forTitleGilding;
  set forTitleGilding(bool? forTitleGilding) =>
      _$this._forTitleGilding = forTitleGilding;

  DestinyRecordDefinitionBuilder();

  DestinyRecordDefinitionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _titleInfo = $v.titleInfo.toBuilder();
      _forTitleGilding = $v.forTitleGilding;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DestinyRecordDefinition other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DestinyRecordDefinition;
  }

  @override
  void update(void Function(DestinyRecordDefinitionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DestinyRecordDefinition build() => _build();

  _$DestinyRecordDefinition _build() {
    _$DestinyRecordDefinition _$result;
    try {
      _$result = _$v ??
          new _$DestinyRecordDefinition._(
              titleInfo: titleInfo.build(),
              forTitleGilding: BuiltValueNullFieldError.checkNotNull(
                  forTitleGilding,
                  r'DestinyRecordDefinition',
                  'forTitleGilding'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'titleInfo';
        titleInfo.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DestinyRecordDefinition', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
