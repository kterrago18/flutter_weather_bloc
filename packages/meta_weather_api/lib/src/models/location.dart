import 'package:json_annotation/json_annotation.dart';

part 'location.g.dart';

@JsonSerializable()
class Location {
  final String title;
  final LocationType locationType;
  final int woeid;
  @JsonKey(name: 'latt_long')
  @LatLngConverter()
  final LatLong latLong;

  Location({
    required this.title,
    required this.locationType,
    required this.woeid,
    required this.latLong,
  });

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}

enum LocationType {
  @JsonValue('City')
  city,
  @JsonValue('Region')
  region,
  @JsonValue('State')
  state,
  @JsonValue('Province')
  province,
  @JsonValue('Country')
  country,
  @JsonValue('Continent')
  continent
}

class LatLong {
  final double latitude;
  final double longitude;
  LatLong({
    required this.latitude,
    required this.longitude,
  });
}

class LatLngConverter implements JsonConverter<LatLong, String> {
  const LatLngConverter();
  @override
  LatLong fromJson(String jsonString) {
    final parts = jsonString.split(',');

    return LatLong(
      latitude: double.tryParse(parts[0]) ?? 0,
      longitude: double.tryParse(parts[1]) ?? 0,
    );
  }

  @override
  String toJson(LatLong latLong) {
    return '${latLong.latitude},${latLong.longitude}';
  }
}
