import 'package:riot_api/riot_api.dart';
import 'model/platform_data_dto.dart';

class TFTStatusV1 {
  /// Get a match by match id
  static Future<PlatformDataDTO> getPlatformData(RegionValues region,
      {Map<String, String>? headers}) async {
    String url =
        '${region.regionToUrl}/${Qtype.tft.name}/status/v1/platform-data';
    PlatformDataDTO platformData =
        await ApiUtil.requestApi(url, PlatformDataDTO.fromJson, headers);
    return platformData;
  }
}
