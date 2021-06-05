class Location {
  final String user;
  final Map<String, double> location;

  Location(this.user, double latitude, double longitude)
      : this.location = {
          "latitude": latitude,
          "longitude": longitude,
        };
}
