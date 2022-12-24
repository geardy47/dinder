import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'breed_image_list_model.freezed.dart';
part 'breed_image_list_model.g.dart';

@freezed
class BreedImageListModel with _$BreedImageListModel {
  factory BreedImageListModel({
    required List<String>? message,
  }) = _BreedImageListModel;

  factory BreedImageListModel.fromJson(Map<String, Object?> json) =>
      _$BreedImageListModelFromJson(json);
}
