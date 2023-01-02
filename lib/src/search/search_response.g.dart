// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SearchResponse> _$searchResponseSerializer =
    new _$SearchResponseSerializer();

class _$SearchResponseSerializer
    implements StructuredSerializer<SearchResponse> {
  @override
  final Iterable<Type> types = const [SearchResponse, _$SearchResponse];
  @override
  final String wireName = 'SearchResponse';

  @override
  Iterable<Object?> serialize(Serializers serializers, SearchResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.searchResults;
    if (value != null) {
      result
        ..add('searchResults')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(SearchResponseDetail)])));
    }
    value = object.page;
    if (value != null) {
      result
        ..add('page')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.hasMore;
    if (value != null) {
      result
        ..add('hasMore')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  SearchResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SearchResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'searchResults':
          result.searchResults.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(SearchResponseDetail)]))!
              as BuiltList<Object?>);
          break;
        case 'page':
          result.page = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'hasMore':
          result.hasMore = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$SearchResponse extends SearchResponse {
  @override
  final BuiltList<SearchResponseDetail>? searchResults;
  @override
  final int? page;
  @override
  final bool? hasMore;

  factory _$SearchResponse([void Function(SearchResponseBuilder)? updates]) =>
      (new SearchResponseBuilder()..update(updates))._build();

  _$SearchResponse._({this.searchResults, this.page, this.hasMore}) : super._();

  @override
  SearchResponse rebuild(void Function(SearchResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchResponseBuilder toBuilder() =>
      new SearchResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchResponse &&
        searchResults == other.searchResults &&
        page == other.page &&
        hasMore == other.hasMore;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, searchResults.hashCode), page.hashCode), hasMore.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SearchResponse')
          ..add('searchResults', searchResults)
          ..add('page', page)
          ..add('hasMore', hasMore))
        .toString();
  }
}

class SearchResponseBuilder
    implements Builder<SearchResponse, SearchResponseBuilder> {
  _$SearchResponse? _$v;

  ListBuilder<SearchResponseDetail>? _searchResults;
  ListBuilder<SearchResponseDetail> get searchResults =>
      _$this._searchResults ??= new ListBuilder<SearchResponseDetail>();
  set searchResults(ListBuilder<SearchResponseDetail>? searchResults) =>
      _$this._searchResults = searchResults;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  bool? _hasMore;
  bool? get hasMore => _$this._hasMore;
  set hasMore(bool? hasMore) => _$this._hasMore = hasMore;

  SearchResponseBuilder();

  SearchResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _searchResults = $v.searchResults?.toBuilder();
      _page = $v.page;
      _hasMore = $v.hasMore;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SearchResponse;
  }

  @override
  void update(void Function(SearchResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SearchResponse build() => _build();

  _$SearchResponse _build() {
    _$SearchResponse _$result;
    try {
      _$result = _$v ??
          new _$SearchResponse._(
              searchResults: _searchResults?.build(),
              page: page,
              hasMore: hasMore);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'searchResults';
        _searchResults?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SearchResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
