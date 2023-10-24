// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'count_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountModelImpl _$$CountModelImplFromJson(Map<String, dynamic> json) =>
    _$CountModelImpl(
      value: json['value'] as int,
      lastUpdatedAt: DateTime.parse(json['lastUpdatedAt'] as String),
    );

Map<String, dynamic> _$$CountModelImplToJson(_$CountModelImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'lastUpdatedAt': instance.lastUpdatedAt.toIso8601String(),
    };
