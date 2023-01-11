import 'dart:async';
import 'dart:convert';

import 'package:destiny2_app/src/api_key.dart';
import 'package:destiny2_app/src/news/values/rss_news_articles.dart';
import 'package:destiny2_app/src/serializers.dart';
import 'package:http/http.dart' as http;

class NewsBloc {
  static final _url = Uri.https('bungie.net', 'Platform/Content/Rss/NewsArticles/0/');

  final _controller = StreamController<RssNewsArticles>.broadcast();
  Stream<RssNewsArticles> get articles => _controller.stream;

  Future<void> loadArticles() async {
    final res = await http.get(_url, headers: {'X-API-Key': apiKey});

    if (res.statusCode == 200) {
      final parsed = jsonDecode(res.body);
      _controller.sink.add(standardSerializers.deserializeWith(RssNewsArticles.serializer, parsed)!);
    }
  }
}