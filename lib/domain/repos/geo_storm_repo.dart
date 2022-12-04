import 'package:sunflare/domain/entities/geo_storm.dart';

abstract class GeoStormRepo {
  Future<List<GeoStorm>> getStorms({
    required DateTime from,
    required DateTime to,
  });
}
