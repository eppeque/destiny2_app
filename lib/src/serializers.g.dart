// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(Article.serializer)
      ..add(ArticleResponse.serializer)
      ..add(CharacterDictionary.serializer)
      ..add(ComponentDictionary.serializer)
      ..add(DestinyCharacter.serializer)
      ..add(DestinyProfileResponse.serializer)
      ..add(DestinyRecordDefinition.serializer)
      ..add(GetProfile.serializer)
      ..add(InventoryComponent.serializer)
      ..add(ItemComponent.serializer)
      ..add(RssNewsArticles.serializer)
      ..add(SearchByGlobalName.serializer)
      ..add(SearchResponse.serializer)
      ..add(SearchResponseDetail.serializer)
      ..add(TitleInfo.serializer)
      ..add(UserInfo.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Article)]),
          () => new ListBuilder<Article>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(ItemComponent)]),
          () => new ListBuilder<ItemComponent>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(SearchResponseDetail)]),
          () => new ListBuilder<SearchResponseDetail>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(UserInfo)]),
          () => new ListBuilder<UserInfo>())
      ..addBuilderFactory(
          const FullType(BuiltMap,
              const [const FullType(String), const FullType(DestinyCharacter)]),
          () => new MapBuilder<String, DestinyCharacter>())
      ..addBuilderFactory(
          const FullType(BuiltMap, const [
            const FullType(String),
            const FullType(InventoryComponent)
          ]),
          () => new MapBuilder<String, InventoryComponent>())
      ..addBuilderFactory(
          const FullType(
              BuiltMap, const [const FullType(String), const FullType(String)]),
          () => new MapBuilder<String, String>())
      ..addBuilderFactory(
          const FullType(
              BuiltMap, const [const FullType(String), const FullType(int)]),
          () => new MapBuilder<String, int>()))
    .build();

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
