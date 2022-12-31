import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:destiny2_app/src/news/article_response.dart';

part 'rss_news_articles.g.dart';

abstract class RssNewsArticles implements Built<RssNewsArticles, RssNewsArticlesBuilder> {
  static Serializer<RssNewsArticles> get serializer => _$rssNewsArticlesSerializer;

  @BuiltValueField(wireName: 'Response')
  ArticleResponse get response;

  @BuiltValueField(wireName: 'ErrorCode')
  int? get errorCode;

  @BuiltValueField(wireName: 'ThrottleSeconds')
  int? get throttleSeconds;

  @BuiltValueField(wireName: 'ErrorStatus')
  String? get errorStatus;

  @BuiltValueField(wireName: 'Message')
  String? get message;

  @BuiltValueField(wireName: 'DetailedErrorTrace')
  String? get detailedErrorTrace;

  RssNewsArticles._();
  factory RssNewsArticles([void Function(RssNewsArticlesBuilder) updates]) = _$RssNewsArticles;
}