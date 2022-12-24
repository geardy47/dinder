// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_json_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseJsonModel _$ResponseJsonModelFromJson(Map<String, dynamic> json) {
  return _ResponseJsonModel.fromJson(json);
}

/// @nodoc
mixin _$ResponseJsonModel {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseJsonModelCopyWith<ResponseJsonModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseJsonModelCopyWith<$Res> {
  factory $ResponseJsonModelCopyWith(
          ResponseJsonModel value, $Res Function(ResponseJsonModel) then) =
      _$ResponseJsonModelCopyWithImpl<$Res, ResponseJsonModel>;
  @useResult
  $Res call({int? code, String? message});
}

/// @nodoc
class _$ResponseJsonModelCopyWithImpl<$Res, $Val extends ResponseJsonModel>
    implements $ResponseJsonModelCopyWith<$Res> {
  _$ResponseJsonModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResponseJsonModelCopyWith<$Res>
    implements $ResponseJsonModelCopyWith<$Res> {
  factory _$$_ResponseJsonModelCopyWith(_$_ResponseJsonModel value,
          $Res Function(_$_ResponseJsonModel) then) =
      __$$_ResponseJsonModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message});
}

/// @nodoc
class __$$_ResponseJsonModelCopyWithImpl<$Res>
    extends _$ResponseJsonModelCopyWithImpl<$Res, _$_ResponseJsonModel>
    implements _$$_ResponseJsonModelCopyWith<$Res> {
  __$$_ResponseJsonModelCopyWithImpl(
      _$_ResponseJsonModel _value, $Res Function(_$_ResponseJsonModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_ResponseJsonModel(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResponseJsonModel extends _ResponseJsonModel {
  _$_ResponseJsonModel({required this.code, required this.message}) : super._();

  factory _$_ResponseJsonModel.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseJsonModelFromJson(json);

  @override
  final int? code;
  @override
  final String? message;

  @override
  String toString() {
    return 'ResponseJsonModel(code: $code, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResponseJsonModel &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResponseJsonModelCopyWith<_$_ResponseJsonModel> get copyWith =>
      __$$_ResponseJsonModelCopyWithImpl<_$_ResponseJsonModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseJsonModelToJson(
      this,
    );
  }
}

abstract class _ResponseJsonModel extends ResponseJsonModel {
  factory _ResponseJsonModel(
      {required final int? code,
      required final String? message}) = _$_ResponseJsonModel;
  _ResponseJsonModel._() : super._();

  factory _ResponseJsonModel.fromJson(Map<String, dynamic> json) =
      _$_ResponseJsonModel.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_ResponseJsonModelCopyWith<_$_ResponseJsonModel> get copyWith =>
      throw _privateConstructorUsedError;
}
