import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'title_info.g.dart';

abstract class TitleInfo implements Built<TitleInfo, TitleInfoBuilder> {
  static Serializer<TitleInfo> get serializer => _$titleInfoSerializer;

  BuiltMap<String, String> get titlesByGender;

  int? get gildingTrackingRecordHash;

  TitleInfo._();
  factory TitleInfo([void Function(TitleInfoBuilder) updates]) = _$TitleInfo;
}