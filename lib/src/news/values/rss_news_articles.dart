import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:destiny2_app/src/news/values/article_response.dart';

part 'rss_news_articles.g.dart';

abstract class RssNewsArticles implements Built<RssNewsArticles, RssNewsArticlesBuilder> {
  static Serializer<RssNewsArticles> get serializer => _$rssNewsArticlesSerializer;

  @BuiltValueField(wireName: 'Response')
  ArticleResponse get response;

  RssNewsArticles._();
  factory RssNewsArticles([void Function(RssNewsArticlesBuilder) updates]) = _$RssNewsArticles;
}