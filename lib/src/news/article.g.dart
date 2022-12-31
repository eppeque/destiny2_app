// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Article> _$articleSerializer = new _$ArticleSerializer();

class _$ArticleSerializer implements StructuredSerializer<Article> {
  @override
  final Iterable<Type> types = const [Article, _$Article];
  @override
  final String wireName = 'Article';

  @override
  Iterable<Object?> serialize(Serializers serializers, Article object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.title;
    if (value != null) {
      result
        ..add('Title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.link;
    if (value != null) {
      result
        ..add('Link')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pubDate;
    if (value != null) {
      result
        ..add('PubDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uniqueIdentifier;
    if (value != null) {
      result
        ..add('UniqueIdentifier')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('Description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.htmlContent;
    if (value != null) {
      result
        ..add('HtmlContent')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imagePath;
    if (value != null) {
      result
        ..add('ImagePath')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.optionalMobileImagePath;
    if (value != null) {
      result
        ..add('OptionalMobileImagePath')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Article deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ArticleBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Link':
          result.link = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'PubDate':
          result.pubDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'UniqueIdentifier':
          result.uniqueIdentifier = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'HtmlContent':
          result.htmlContent = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ImagePath':
          result.imagePath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'OptionalMobileImagePath':
          result.optionalMobileImagePath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Article extends Article {
  @override
  final String? title;
  @override
  final String? link;
  @override
  final String? pubDate;
  @override
  final String? uniqueIdentifier;
  @override
  final String? description;
  @override
  final String? htmlContent;
  @override
  final String? imagePath;
  @override
  final String? optionalMobileImagePath;

  factory _$Article([void Function(ArticleBuilder)? updates]) =>
      (new ArticleBuilder()..update(updates))._build();

  _$Article._(
      {this.title,
      this.link,
      this.pubDate,
      this.uniqueIdentifier,
      this.description,
      this.htmlContent,
      this.imagePath,
      this.optionalMobileImagePath})
      : super._();

  @override
  Article rebuild(void Function(ArticleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ArticleBuilder toBuilder() => new ArticleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Article &&
        title == other.title &&
        link == other.link &&
        pubDate == other.pubDate &&
        uniqueIdentifier == other.uniqueIdentifier &&
        description == other.description &&
        htmlContent == other.htmlContent &&
        imagePath == other.imagePath &&
        optionalMobileImagePath == other.optionalMobileImagePath;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, title.hashCode), link.hashCode),
                            pubDate.hashCode),
                        uniqueIdentifier.hashCode),
                    description.hashCode),
                htmlContent.hashCode),
            imagePath.hashCode),
        optionalMobileImagePath.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Article')
          ..add('title', title)
          ..add('link', link)
          ..add('pubDate', pubDate)
          ..add('uniqueIdentifier', uniqueIdentifier)
          ..add('description', description)
          ..add('htmlContent', htmlContent)
          ..add('imagePath', imagePath)
          ..add('optionalMobileImagePath', optionalMobileImagePath))
        .toString();
  }
}

class ArticleBuilder implements Builder<Article, ArticleBuilder> {
  _$Article? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _link;
  String? get link => _$this._link;
  set link(String? link) => _$this._link = link;

  String? _pubDate;
  String? get pubDate => _$this._pubDate;
  set pubDate(String? pubDate) => _$this._pubDate = pubDate;

  String? _uniqueIdentifier;
  String? get uniqueIdentifier => _$this._uniqueIdentifier;
  set uniqueIdentifier(String? uniqueIdentifier) =>
      _$this._uniqueIdentifier = uniqueIdentifier;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _htmlContent;
  String? get htmlContent => _$this._htmlContent;
  set htmlContent(String? htmlContent) => _$this._htmlContent = htmlContent;

  String? _imagePath;
  String? get imagePath => _$this._imagePath;
  set imagePath(String? imagePath) => _$this._imagePath = imagePath;

  String? _optionalMobileImagePath;
  String? get optionalMobileImagePath => _$this._optionalMobileImagePath;
  set optionalMobileImagePath(String? optionalMobileImagePath) =>
      _$this._optionalMobileImagePath = optionalMobileImagePath;

  ArticleBuilder();

  ArticleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _link = $v.link;
      _pubDate = $v.pubDate;
      _uniqueIdentifier = $v.uniqueIdentifier;
      _description = $v.description;
      _htmlContent = $v.htmlContent;
      _imagePath = $v.imagePath;
      _optionalMobileImagePath = $v.optionalMobileImagePath;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Article other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Article;
  }

  @override
  void update(void Function(ArticleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Article build() => _build();

  _$Article _build() {
    final _$result = _$v ??
        new _$Article._(
            title: title,
            link: link,
            pubDate: pubDate,
            uniqueIdentifier: uniqueIdentifier,
            description: description,
            htmlContent: htmlContent,
            imagePath: imagePath,
            optionalMobileImagePath: optionalMobileImagePath);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
