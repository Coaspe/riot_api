import 'package:val_api/src/val-content-v1/model/content_dto.dart';
import 'package:riot_api/riot_api.dart';

import 'model/localized_names_dto.dart';

class ValContentV1 {
  /// Get content, optionally filtered by any Riot-supported locale string.
  static Future<ContentDTO> getContent(
    ValRegionValues region, {
    String? locale,
    Map<String, String>? headers,
  }) async {
    final url =
        Uri.parse('${region.regionToUrl}/${Qtype.val.name}/content/v1/contents')
            .replace(
              queryParameters: locale == null ? null : {'locale': locale},
            )
            .toString();
    return ApiUtil.requestApi(url, ContentDTO.fromJson, headers);
  }

  /// Get content optionally filtered by locale
  static Future<ContentDTO> getContentByLocale(
    ValRegionValues region, {
    Locale? locale,
    Map<String, String>? headers,
  }) => getContent(region, locale: locale?.valueToString, headers: headers);
}
