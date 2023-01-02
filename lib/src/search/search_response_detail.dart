import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:destiny2_app/src/search/user_info.dart';

part 'search_response_detail.g.dart';

abstract class SearchResponseDetail implements Built<SearchResponseDetail, SearchResponseDetailBuilder> {
  static Serializer<SearchResponseDetail> get serializer => _$searchResponseDetailSerializer;

  String? get bungieGlobalDisplayName;

  int? get bungieGlobalDisplayNameCode;

  String? get bungieNetMembershipId;

  BuiltList<UserInfo>? get destinyMemberships;

  SearchResponseDetail._();
  factory SearchResponseDetail([void Function(SearchResponseDetailBuilder) updates]) = _$SearchResponseDetail;
}