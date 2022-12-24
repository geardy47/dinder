import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'breed_list_model.freezed.dart';
part 'breed_list_model.g.dart';

@freezed
class BreedListModel with _$BreedListModel {
  factory BreedListModel({
    required Map<String, dynamic>? message,
  }) = _BreedListModel;

  factory BreedListModel.fromJson(Map<String, Object?> json) =>
      _$BreedListModelFromJson(json);
}
