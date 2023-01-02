// Copyright (c) 2015, Google Inc. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:destiny2_app/src/news/article.dart';
import 'package:destiny2_app/src/news/article_response.dart';
import 'package:destiny2_app/src/news/rss_news_articles.dart';
import 'package:destiny2_app/src/search/search_by_global_name.dart';
import 'package:destiny2_app/src/search/search_response.dart';
import 'package:destiny2_app/src/search/search_response_detail.dart';
import 'package:destiny2_app/src/search/user.dart';

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
  User,
  SearchByGlobalName,
  SearchResponse,
  SearchResponseDetail,
])
final Serializers serializers = _$serializers;

final standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();