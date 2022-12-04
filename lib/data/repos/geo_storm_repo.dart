import 'package:sunflare/data/entities/geo_storm_dto.dart';
import 'package:sunflare/data/services/nasa_service.dart';
import 'package:sunflare/domain/entities/geo_storm.dart';
import 'package:sunflare/domain/repos/geo_storm_repo.dart';

class GeoStormRepoImpl extends GeoStormRepo {
  final NasaService _nasaService;

  GeoStormRepoImpl(this._nasaService);

  @override
  Future<List<GeoStorm>> getStorms({required DateTime from, required DateTime to}) async {
    final res = await _nasaService.getGeoStorms(from, to);
    return res.map((e) => e.toModel()).toList();
  }
}
