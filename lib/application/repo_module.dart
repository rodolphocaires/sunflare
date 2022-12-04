import 'package:sunflare/data/repos/geo_storm_repo.dart';
import 'package:sunflare/data/repos/solar_flare_repo.dart';
import 'package:sunflare/data/services/nasa_service.dart';
import 'package:sunflare/domain/repos/geo_storm_repo.dart';
import 'package:sunflare/domain/repos/solar_flare_repo.dart';

class RepoModule {
  static GeoStormRepo? _geoStormRepo;
  static SolarFlareRepo? _solarFlareRepo;

  static final NasaService _nasaService = NasaService();

  static GeoStormRepo geoStormRepo() {
    _geoStormRepo ??= GeoStormRepoImpl(_nasaService);
    return _geoStormRepo!;
  }

  static SolarFlareRepo solarFlareRepo() {
    _solarFlareRepo ??= SolarFlareRepoImpl(_nasaService);
    return _solarFlareRepo!;
  }
}
