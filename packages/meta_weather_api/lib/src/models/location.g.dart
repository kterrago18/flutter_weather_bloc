// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Location _$LocationFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Location',
      json,
      ($checkedConvert) {
        final val = Location(
          title: $checkedConvert('title', (v) => v as String),
          locationType: $checkedConvert(
              'location_type', (v) => $enumDecode(_$LocationTypeEnumMap, v)),
          woeid: $checkedConvert('woeid', (v) => v as int),
          latLong: $checkedConvert('latt_long',
              (v) => const LatLngConverter().fromJson(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {
        'locationType': 'location_type',
        'latLong': 'latt_long'
      },
    );

const _$LocationTypeEnumMap = {
  LocationType.city: 'City',
  LocationType.region: 'Region',
  LocationType.state: 'State',
  LocationType.province: 'Province',
  LocationType.country: 'Country',
  LocationType.continent: 'Continent',
};
