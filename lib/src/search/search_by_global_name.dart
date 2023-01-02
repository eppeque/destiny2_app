import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:destiny2_app/src/search/search_response.dart';

part 'search_by_global_name.g.dart';

abstract class SearchByGlobalName implements Built<SearchByGlobalName, SearchByGlobalNameBuilder> {
  static Serializer<SearchByGlobalName> get serializer => _$searchByGlobalNameSerializer;

  @BuiltValueField(wireName: 'Response')
  SearchResponse get response;

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

  SearchByGlobalName._();
  factory SearchByGlobalName([void Function(SearchByGlobalNameBuilder) updates]) = _$SearchByGlobalName;
}