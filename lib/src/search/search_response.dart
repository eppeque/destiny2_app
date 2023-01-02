import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:destiny2_app/src/search/search_response_detail.dart';

part 'search_response.g.dart';

abstract class SearchResponse implements Built<SearchResponse, SearchResponseBuilder> {
  static Serializer<SearchResponse> get serializer => _$searchResponseSerializer;

  BuiltList<SearchResponseDetail>? get searchResults;

  int? get page;

  bool? get hasMore;

  SearchResponse._();
  factory SearchResponse([void Function(SearchResponseBuilder) updates]) = _$SearchResponse;
}