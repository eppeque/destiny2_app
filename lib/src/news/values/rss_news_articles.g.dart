// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rss_news_articles.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RssNewsArticles> _$rssNewsArticlesSerializer =
    new _$RssNewsArticlesSerializer();

class _$RssNewsArticlesSerializer
    implements StructuredSerializer<RssNewsArticles> {
  @override
  final Iterable<Type> types = const [RssNewsArticles, _$RssNewsArticles];
  @override
  final String wireName = 'RssNewsArticles';

  @override
  Iterable<Object?> serialize(Serializers serializers, RssNewsArticles object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'Response',
      serializers.serialize(object.response,
          specifiedType: const FullType(ArticleResponse)),
    ];

    return result;
  }

  @override
  RssNewsArticles deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RssNewsArticlesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Response':
          result.response.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ArticleResponse))!
              as ArticleResponse);
          break;
      }
    }

    return result.build();
  }
}

class _$RssNewsArticles extends RssNewsArticles {
  @override
  final ArticleResponse response;

  factory _$RssNewsArticles([void Function(RssNewsArticlesBuilder)? updates]) =>
      (new RssNewsArticlesBuilder()..update(updates))._build();

  _$RssNewsArticles._({required this.response}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        response, r'RssNewsArticles', 'response');
  }

  @override
  RssNewsArticles rebuild(void Function(RssNewsArticlesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RssNewsArticlesBuilder toBuilder() =>
      new RssNewsArticlesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RssNewsArticles && response == other.response;
  }

  @override
  int get hashCode {
    return $jf($jc(0, response.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RssNewsArticles')
          ..add('response', response))
        .toString();
  }
}

class RssNewsArticlesBuilder
    implements Builder<RssNewsArticles, RssNewsArticlesBuilder> {
  _$RssNewsArticles? _$v;

  ArticleResponseBuilder? _response;
  ArticleResponseBuilder get response =>
      _$this._response ??= new ArticleResponseBuilder();
  set response(ArticleResponseBuilder? response) => _$this._response = response;

  RssNewsArticlesBuilder();

  RssNewsArticlesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _response = $v.response.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RssNewsArticles other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RssNewsArticles;
  }

  @override
  void update(void Function(RssNewsArticlesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RssNewsArticles build() => _build();

  _$RssNewsArticles _build() {
    _$RssNewsArticles _$result;
    try {
      _$result = _$v ?? new _$RssNewsArticles._(response: response.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'response';
        response.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RssNewsArticles', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
