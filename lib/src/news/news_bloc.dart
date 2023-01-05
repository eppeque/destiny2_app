import 'dart:convert';

import 'package:destiny2_app/src/api_key.dart';
import 'package:destiny2_app/src/news/values/rss_news_articles.dart';
import 'package:destiny2_app/src/serializers.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class NewsBloc with ChangeNotifier {
  static final _url = Uri.https('bungie.net', 'Platform/Content/Rss/NewsArticles/0/');

  late RssNewsArticles _newsArticles;

  RssNewsArticles get newsArticles => _newsArticles;

  Future<void> load() async {
    final res = await http.get(_url, headers: {'X-API-Key': apiKey});

    if (res.statusCode == 200) {
      final parsed = jsonDecode(res.body);
      _newsArticles = standardSerializers.deserializeWith(RssNewsArticles.serializer, parsed)!;
      notifyListeners();
    }
  }
}