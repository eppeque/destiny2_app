// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'title_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TitleInfo> _$titleInfoSerializer = new _$TitleInfoSerializer();

class _$TitleInfoSerializer implements StructuredSerializer<TitleInfo> {
  @override
  final Iterable<Type> types = const [TitleInfo, _$TitleInfo];
  @override
  final String wireName = 'TitleInfo';

  @override
  Iterable<Object?> serialize(Serializers serializers, TitleInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'titlesByGender',
      serializers.serialize(object.titlesByGender,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(String), const FullType(String)])),
    ];
    Object? value;
    value = object.gildingTrackingRecordHash;
    if (value != null) {
      result
        ..add('gildingTrackingRecordHash')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  TitleInfo deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TitleInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'titlesByGender':
          result.titlesByGender.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap,
                  const [const FullType(String), const FullType(String)]))!);
          break;
        case 'gildingTrackingRecordHash':
          result.gildingTrackingRecordHash = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$TitleInfo extends TitleInfo {
  @override
  final BuiltMap<String, String> titlesByGender;
  @override
  final int? gildingTrackingRecordHash;

  factory _$TitleInfo([void Function(TitleInfoBuilder)? updates]) =>
      (new TitleInfoBuilder()..update(updates))._build();

  _$TitleInfo._({required this.titlesByGender, this.gildingTrackingRecordHash})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        titlesByGender, r'TitleInfo', 'titlesByGender');
  }

  @override
  TitleInfo rebuild(void Function(TitleInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TitleInfoBuilder toBuilder() => new TitleInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TitleInfo &&
        titlesByGender == other.titlesByGender &&
        gildingTrackingRecordHash == other.gildingTrackingRecordHash;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(0, titlesByGender.hashCode), gildingTrackingRecordHash.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TitleInfo')
          ..add('titlesByGender', titlesByGender)
          ..add('gildingTrackingRecordHash', gildingTrackingRecordHash))
        .toString();
  }
}

class TitleInfoBuilder implements Builder<TitleInfo, TitleInfoBuilder> {
  _$TitleInfo? _$v;

  MapBuilder<String, String>? _titlesByGender;
  MapBuilder<String, String> get titlesByGender =>
      _$this._titlesByGender ??= new MapBuilder<String, String>();
  set titlesByGender(MapBuilder<String, String>? titlesByGender) =>
      _$this._titlesByGender = titlesByGender;

  int? _gildingTrackingRecordHash;
  int? get gildingTrackingRecordHash => _$this._gildingTrackingRecordHash;
  set gildingTrackingRecordHash(int? gildingTrackingRecordHash) =>
      _$this._gildingTrackingRecordHash = gildingTrackingRecordHash;

  TitleInfoBuilder();

  TitleInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _titlesByGender = $v.titlesByGender.toBuilder();
      _gildingTrackingRecordHash = $v.gildingTrackingRecordHash;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TitleInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TitleInfo;
  }

  @override
  void update(void Function(TitleInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TitleInfo build() => _build();

  _$TitleInfo _build() {
    _$TitleInfo _$result;
    try {
      _$result = _$v ??
          new _$TitleInfo._(
              titlesByGender: titlesByGender.build(),
              gildingTrackingRecordHash: gildingTrackingRecordHash);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'titlesByGender';
        titlesByGender.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TitleInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
