import 'package:sunflare/domain/entities/geo_storm.dart';
import 'package:sunflare/domain/entities/solar_flare.dart';

class SolarActivities {
  final SolarFlare lastFlare;
  final GeoStorm lastStorm;

  SolarActivities({
    required this.lastFlare,
    required this.lastStorm,
  });
}
