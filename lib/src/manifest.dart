import 'dart:convert';

import 'package:destiny2_app/src/api_key.dart';
import 'package:destiny2_app/src/search/search_bloc.dart';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>> fetchFromManifest(String entityType, int hashIdentifier) async {
  final url = Uri.parse('https://www.bungie.net/Platform/Destiny2/Manifest/$entityType/$hashIdentifier/');
  final res = await http.get(url, headers: {'X-API-Key': apiKey});

  if (res.statusCode == 200) {
    return jsonDecode(res.body) as Map<String, dynamic>;
  }

  throw BungieApiError(res.reasonPhrase!);
}