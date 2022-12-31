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
    Object? value;
    value = object.errorCode;
    if (value != null) {
      result
        ..add('ErrorCode')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.throttleSeconds;
    if (value != null) {
      result
        ..add('ThrottleSeconds')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.errorStatus;
    if (value != null) {
      result
        ..add('ErrorStatus')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.message;
    if (value != null) {
      result
        ..add('Message')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.detailedErrorTrace;
    if (value != null) {
      result
        ..add('DetailedErrorTrace')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
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
        case 'ErrorCode':
          result.errorCode = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'ThrottleSeconds':
          result.throttleSeconds = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'ErrorStatus':
          result.errorStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'DetailedErrorTrace':
          result.detailedErrorTrace = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$RssNewsArticles extends RssNewsArticles {
  @override
  final ArticleResponse response;
  @override
  final int? errorCode;
  @override
  final int? throttleSeconds;
  @override
  final String? errorStatus;
  @override
  final String? message;
  @override
  final String? detailedErrorTrace;

  factory _$RssNewsArticles([void Function(RssNewsArticlesBuilder)? updates]) =>
      (new RssNewsArticlesBuilder()..update(updates))._build();

  _$RssNewsArticles._(
      {required this.response,
      this.errorCode,
      this.throttleSeconds,
      this.errorStatus,
      this.message,
      this.detailedErrorTrace})
      : super._() {
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
    return other is RssNewsArticles &&
        response == other.response &&
        errorCode == other.errorCode &&
        throttleSeconds == other.throttleSeconds &&
        errorStatus == other.errorStatus &&
        message == other.message &&
        detailedErrorTrace == other.detailedErrorTrace;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, response.hashCode), errorCode.hashCode),
                    throttleSeconds.hashCode),
                errorStatus.hashCode),
            message.hashCode),
        detailedErrorTrace.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RssNewsArticles')
          ..add('response', response)
          ..add('errorCode', errorCode)
          ..add('throttleSeconds', throttleSeconds)
          ..add('errorStatus', errorStatus)
          ..add('message', message)
          ..add('detailedErrorTrace', detailedErrorTrace))
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

  int? _errorCode;
  int? get errorCode => _$this._errorCode;
  set errorCode(int? errorCode) => _$this._errorCode = errorCode;

  int? _throttleSeconds;
  int? get throttleSeconds => _$this._throttleSeconds;
  set throttleSeconds(int? throttleSeconds) =>
      _$this._throttleSeconds = throttleSeconds;

  String? _errorStatus;
  String? get errorStatus => _$this._errorStatus;
  set errorStatus(String? errorStatus) => _$this._errorStatus = errorStatus;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _detailedErrorTrace;
  String? get detailedErrorTrace => _$this._detailedErrorTrace;
  set detailedErrorTrace(String? detailedErrorTrace) =>
      _$this._detailedErrorTrace = detailedErrorTrace;

  RssNewsArticlesBuilder();

  RssNewsArticlesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _response = $v.response.toBuilder();
      _errorCode = $v.errorCode;
      _throttleSeconds = $v.throttleSeconds;
      _errorStatus = $v.errorStatus;
      _message = $v.message;
      _detailedErrorTrace = $v.detailedErrorTrace;
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
      _$result = _$v ??
          new _$RssNewsArticles._(
              response: response.build(),
              errorCode: errorCode,
              throttleSeconds: throttleSeconds,
              errorStatus: errorStatus,
              message: message,
              detailedErrorTrace: detailedErrorTrace);
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
