import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:destiny2_app/src/news/article.dart';

part 'article_response.g.dart';

abstract class ArticleResponse implements Built<ArticleResponse, ArticleResponseBuilder> {
  static Serializer<ArticleResponse> get serializer => _$articleResponseSerializer;

  @BuiltValueField(wireName: 'NewsArticles')
  BuiltList<Article> get articles;

  @BuiltValueField(wireName: 'CurrentPaginationToken')
  int? get currentPaginationToken;

  @BuiltValueField(wireName: 'NextPaginationToken')
  int? get nextPaginationToken;

  @BuiltValueField(wireName: 'ResultCountThisPage')
  int? get resultCountThisPage;

  @BuiltValueField(wireName: 'CategoryFilter')
  String? get categoryFilter;

  ArticleResponse._();
  factory ArticleResponse([void Function(ArticleResponseBuilder) updates]) = _$ArticleResponse;
}