import 'package:riot_api/riot_api.dart';
import 'model/platform_data_dto.dart';

class LoLStatusV4 {
  /// Get League of Legends status for the given platform.
  static Future<PlatformDataDTO> getLOLStatus(RegionValues region,
      {Map<String, String>? headers}) async {
    final url =
        '${region.regionToUrl}/${Qtype.lol.name}/status/v4/platform-data';
    final status =
        await ApiUtil.requestApi(url, PlatformDataDTO.fromJson, headers);
    return status;
  }
}
