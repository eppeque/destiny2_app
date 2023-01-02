import 'dart:convert';

import 'package:destiny2_app/src/api_key.dart';
import 'package:destiny2_app/src/search/search_by_global_name.dart';
import 'package:destiny2_app/src/serializers.dart';
import 'package:http/http.dart' as http;

class SearchBloc {
  static final _url = Uri.parse(
    'https://www.bungie.net/Platform/User/Search/GlobalName/0/',
  );

  Future<SearchByGlobalName> searchPlayer(String name) async {
    final res = await http.post(
      _url,
      headers: {
        'X-API-Key': apiKey,
        'Content-Type': 'application/json',
      },
      body: jsonEncode({'displayNamePrefix': name}),
    );

    if (res.statusCode == 200) {
      final parsed = jsonDecode(res.body);
      return standardSerializers.deserializeWith(SearchByGlobalName.serializer, parsed)!;
    }

    throw BungieApiError("HTTP response code different than 0");
  }
}

class BungieApiError extends Error {
  final String message;

  BungieApiError(this.message);
}