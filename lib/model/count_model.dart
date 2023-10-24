import 'package:freezed_annotation/freezed_annotation.dart';

part 'count_model.freezed.dart';
part 'count_model.g.dart';

@freezed
class CountModel with _$CountModel {
  factory CountModel({
    required int value,
    required DateTime lastUpdatedAt,
  }) = _CountModel;

  factory CountModel.empty() => CountModel(value: 0, lastUpdatedAt: DateTime.now());

  factory CountModel.fromJson(Map<String, dynamic> json) => _$CountModelFromJson(json);
}
