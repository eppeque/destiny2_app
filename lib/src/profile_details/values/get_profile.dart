import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:destiny2_app/src/profile_details/values/destiny_profile_response.dart';

part 'get_profile.g.dart';

abstract class GetProfile implements Built<GetProfile, GetProfileBuilder> {
  static Serializer<GetProfile> get serializer => _$getProfileSerializer;

  @BuiltValueField(wireName: 'Response')
  DestinyProfileResponse get response;

  GetProfile._();
  factory GetProfile([void Function(GetProfileBuilder) updates]) = _$GetProfile;
}