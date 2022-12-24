import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_json_model.freezed.dart';
part 'response_json_model.g.dart';

@freezed
class ResponseJsonModel with _$ResponseJsonModel {
  const ResponseJsonModel._();

  factory ResponseJsonModel({
    required int? code,
    required String? message,
  }) = _ResponseJsonModel;

  factory ResponseJsonModel.fromJson(Map<String, dynamic> json) =>
      _$ResponseJsonModelFromJson(json);
}
