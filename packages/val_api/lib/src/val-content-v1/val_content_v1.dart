import 'package:val_api/src/val-content-v1/model/content_dto.dart';
import 'package:riot_api/riot_api.dart';

import 'model/localized_names_dto.dart';

class ValContentV1 {
  /// Get content optionally filtered by locale
  static Future<ContentDTO> getContentByLocale(RegionValues region,
      {Locale? locale, Map<String, String>? headers}) async {
    String url = '${region.regionToUrl}/${Qtype.val.name}/content/v1/contents';
    if (locale != null) url += '?${locale.valueToString}';
    ContentDTO content =
        await ApiUtil.requestApi(url, ContentDTO.fromJson, headers);
    return content;
  }
}
