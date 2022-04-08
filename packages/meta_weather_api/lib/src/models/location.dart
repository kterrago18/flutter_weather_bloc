class Location {
  final String title;
  final String locationType;
  final int woeid;
  final LatLong latLong;
  Location({
    required this.title,
    required this.locationType,
    required this.woeid,
    required this.latLong,
  });
}

class LatLong {
  final double latitude;
  final double longitude;
  LatLong({
    required this.latitude,
    required this.longitude,
  });
}
