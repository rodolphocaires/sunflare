import 'package:sunflare/data/entities/solar_flare_dto.dart';
import 'package:sunflare/data/services/nasa_service.dart';
import 'package:sunflare/domain/entities/solar_flare.dart';
import 'package:sunflare/domain/repos/solar_flare_repo.dart';

class SolarFlareRepoImpl extends SolarFlareRepo {
  final NasaService _nasaService;

  SolarFlareRepoImpl(this._nasaService);

  @override
  Future<List<SolarFlare>> getFlares({required DateTime from, required DateTime to}) async {
    final res = await _nasaService.getFlares(from, to);
    return res.map((e) => e.toModel()).toList();
  }
}
