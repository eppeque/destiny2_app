import 'dart:convert';

import 'package:destiny2_app/src/api_key.dart';
import 'package:destiny2_app/src/manifest.dart';
import 'package:destiny2_app/src/profile_details/values/destiny_record_definition.dart';
import 'package:destiny2_app/src/profile_details/values/get_profile.dart';
import 'package:destiny2_app/src/search/search_bloc.dart';
import 'package:destiny2_app/src/serializers.dart';
import 'package:http/http.dart' as http;

Future<GetProfile> loadProfile(int membershipType, String membershipId) async {
  final url = Uri.parse('https://www.bungie.net/Platform/Destiny2/$membershipType/Profile/$membershipId/?components=200,201,205');
  final res = await http.get(url, headers: {'X-API-Key': apiKey});

  if (res.statusCode == 200) {
    final parsed = jsonDecode(res.body);
    return standardSerializers.deserializeWith(GetProfile.serializer, parsed)!;
  }

  throw BungieApiError(res.reasonPhrase!);
}

Future<DestinyRecordDefinition> loadTitle(int titleRecordHash) async {
  final parsed = await fetchFromManifest('DestinyRecordDefinition', titleRecordHash);
  var result = standardSerializers.deserializeWith(DestinyRecordDefinition.serializer, parsed)!;

  while (result.titleInfo.gildingTrackingRecordHash != null) {
    final newResult = await fetchFromManifest('DestinyRecordDefinition', result.titleInfo.gildingTrackingRecordHash!);
    result = standardSerializers.deserializeWith(DestinyRecordDefinition.serializer, newResult)!;
  }

  return result;
}