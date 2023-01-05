// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ArticleResponse> _$articleResponseSerializer =
    new _$ArticleResponseSerializer();

class _$ArticleResponseSerializer
    implements StructuredSerializer<ArticleResponse> {
  @override
  final Iterable<Type> types = const [ArticleResponse, _$ArticleResponse];
  @override
  final String wireName = 'ArticleResponse';

  @override
  Iterable<Object?> serialize(Serializers serializers, ArticleResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'NewsArticles',
      serializers.serialize(object.articles,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Article)])),
    ];

    return result;
  }

  @override
  ArticleResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ArticleResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'NewsArticles':
          result.articles.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Article)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$ArticleResponse extends ArticleResponse {
  @override
  final BuiltList<Article> articles;

  factory _$ArticleResponse([void Function(ArticleResponseBuilder)? updates]) =>
      (new ArticleResponseBuilder()..update(updates))._build();

  _$ArticleResponse._({required this.articles}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        articles, r'ArticleResponse', 'articles');
  }

  @override
  ArticleResponse rebuild(void Function(ArticleResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ArticleResponseBuilder toBuilder() =>
      new ArticleResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ArticleResponse && articles == other.articles;
  }

  @override
  int get hashCode {
    return $jf($jc(0, articles.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ArticleResponse')
          ..add('articles', articles))
        .toString();
  }
}

class ArticleResponseBuilder
    implements Builder<ArticleResponse, ArticleResponseBuilder> {
  _$ArticleResponse? _$v;

  ListBuilder<Article>? _articles;
  ListBuilder<Article> get articles =>
      _$this._articles ??= new ListBuilder<Article>();
  set articles(ListBuilder<Article>? articles) => _$this._articles = articles;

  ArticleResponseBuilder();

  ArticleResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _articles = $v.articles.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ArticleResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ArticleResponse;
  }

  @override
  void update(void Function(ArticleResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ArticleResponse build() => _build();

  _$ArticleResponse _build() {
    _$ArticleResponse _$result;
    try {
      _$result = _$v ?? new _$ArticleResponse._(articles: articles.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'articles';
        articles.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ArticleResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
