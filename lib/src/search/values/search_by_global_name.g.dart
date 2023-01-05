// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_by_global_name.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SearchByGlobalName> _$searchByGlobalNameSerializer =
    new _$SearchByGlobalNameSerializer();

class _$SearchByGlobalNameSerializer
    implements StructuredSerializer<SearchByGlobalName> {
  @override
  final Iterable<Type> types = const [SearchByGlobalName, _$SearchByGlobalName];
  @override
  final String wireName = 'SearchByGlobalName';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, SearchByGlobalName object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'Response',
      serializers.serialize(object.response,
          specifiedType: const FullType(SearchResponse)),
    ];

    return result;
  }

  @override
  SearchByGlobalName deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SearchByGlobalNameBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Response':
          result.response.replace(serializers.deserialize(value,
                  specifiedType: const FullType(SearchResponse))!
              as SearchResponse);
          break;
      }
    }

    return result.build();
  }
}

class _$SearchByGlobalName extends SearchByGlobalName {
  @override
  final SearchResponse response;

  factory _$SearchByGlobalName(
          [void Function(SearchByGlobalNameBuilder)? updates]) =>
      (new SearchByGlobalNameBuilder()..update(updates))._build();

  _$SearchByGlobalName._({required this.response}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        response, r'SearchByGlobalName', 'response');
  }

  @override
  SearchByGlobalName rebuild(
          void Function(SearchByGlobalNameBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchByGlobalNameBuilder toBuilder() =>
      new SearchByGlobalNameBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchByGlobalName && response == other.response;
  }

  @override
  int get hashCode {
    return $jf($jc(0, response.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SearchByGlobalName')
          ..add('response', response))
        .toString();
  }
}

class SearchByGlobalNameBuilder
    implements Builder<SearchByGlobalName, SearchByGlobalNameBuilder> {
  _$SearchByGlobalName? _$v;

  SearchResponseBuilder? _response;
  SearchResponseBuilder get response =>
      _$this._response ??= new SearchResponseBuilder();
  set response(SearchResponseBuilder? response) => _$this._response = response;

  SearchByGlobalNameBuilder();

  SearchByGlobalNameBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _response = $v.response.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchByGlobalName other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SearchByGlobalName;
  }

  @override
  void update(void Function(SearchByGlobalNameBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SearchByGlobalName build() => _build();

  _$SearchByGlobalName _build() {
    _$SearchByGlobalName _$result;
    try {
      _$result = _$v ?? new _$SearchByGlobalName._(response: response.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'response';
        response.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SearchByGlobalName', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
