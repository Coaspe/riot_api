import 'package:json_annotation/json_annotation.dart';
import 'package:lol_api/src/league-exp-v4/model/league_entry_dto.dart';

part 'serializable_map_of_percentile.g.dart';

/// For serializable Map<String, Map<Tier, num>> data.
@JsonSerializable(createToJson: false)
class SerializableMapOfPercentile {
  const SerializableMapOfPercentile({required this.percentile});

  /// Map of level to percentile of players who have achieved it
  ///
  /// keys: ChallengeId -> Season -> Level -> percentile of players who achieved it
  final Map<String, Map<Tier, num>> percentile;
  factory SerializableMapOfPercentile.fromJson(Map<String, dynamic> json) {
    json = {"percentile": json};
    return _$SerializableMapOfPercentileFromJson(json);
  }
}
