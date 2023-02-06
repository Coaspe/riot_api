// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializable_map_of_percentile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SerializableMapOfPercentile _$SerializableMapOfPercentileFromJson(
        Map<String, dynamic> json) =>
    SerializableMapOfPercentile(
      percentile: (json['percentile'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            k,
            (e as Map<String, dynamic>).map(
              (k, e) => MapEntry($enumDecode(_$TierEnumMap, k), e as num),
            )),
      ),
    );

const _$TierEnumMap = {
  Tier.challenger: 'CHALLENGER',
  Tier.grandmaster: 'GRANDMASTER',
  Tier.master: 'MASTER',
  Tier.diamond: 'DIAMOND',
  Tier.platinum: 'PLATINUM',
  Tier.gold: 'GOLD',
  Tier.silver: 'SILVER',
  Tier.bronze: 'BRONZE',
  Tier.iron: 'IRON',
};
