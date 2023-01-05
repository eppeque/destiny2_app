// Copyright (c) 2015, Google Inc. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:destiny2_app/src/news/values/article.dart';
import 'package:destiny2_app/src/news/values/article_response.dart';
import 'package:destiny2_app/src/news/values/rss_news_articles.dart';
import 'package:destiny2_app/src/profile_details/values/character_dictionary.dart';
import 'package:destiny2_app/src/profile_details/values/component_dictionary.dart';
import 'package:destiny2_app/src/profile_details/values/destiny_character.dart';
import 'package:destiny2_app/src/profile_details/values/destiny_profile_response.dart';
import 'package:destiny2_app/src/profile_details/values/get_profile.dart';
import 'package:destiny2_app/src/profile_details/values/inventory_component.dart';
import 'package:destiny2_app/src/profile_details/values/item_component.dart';
import 'package:destiny2_app/src/search/values/search_by_global_name.dart';
import 'package:destiny2_app/src/search/values/search_response.dart';
import 'package:destiny2_app/src/search/values/search_response_detail.dart';
import 'package:destiny2_app/src/search/values/user_info.dart';

part 'serializers.g.dart';

/// Example of how to use built_value serialization.
///
/// Declare a top level [Serializers] field called serializers. Annotate it
/// with [SerializersFor] and provide a `const` `List` of types you want to
/// be serializable.
///
/// The built_value code generator will provide the implementation. It will
/// contain serializers for all the types asked for explicitly plus all the
/// types needed transitively via fields.
///
/// You usually only need to do this once per project.
@SerializersFor([
  Article,
  ArticleResponse,
  RssNewsArticles,
  UserInfo,
  SearchByGlobalName,
  SearchResponse,
  SearchResponseDetail,
  GetProfile,
  CharacterDictionary,
  ComponentDictionary,
  DestinyCharacter,
  DestinyProfileResponse,
  InventoryComponent,
  ItemComponent,
])
final Serializers serializers = _$serializers;

final standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();