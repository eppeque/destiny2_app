import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'article.g.dart';

abstract class Article implements Built<Article, ArticleBuilder> {
  static Serializer<Article> get serializer => _$articleSerializer;

  @BuiltValueField(wireName: 'Title')
  String? get title;

  @BuiltValueField(wireName: 'Link')
  String? get link;

  @BuiltValueField(wireName: 'PubDate')
  String? get pubDate;

  @BuiltValueField(wireName: 'UniqueIdentifier')
  String? get uniqueIdentifier;

  @BuiltValueField(wireName: 'Description')
  String? get description;

  @BuiltValueField(wireName: 'HtmlContent')
  String? get htmlContent;

  @BuiltValueField(wireName: 'ImagePath')
  String? get imagePath;

  @BuiltValueField(wireName: 'OptionalMobileImagePath')
  String? get optionalMobileImagePath;

  Article._();
  factory Article([void Function(ArticleBuilder) updates]) = _$Article;
}