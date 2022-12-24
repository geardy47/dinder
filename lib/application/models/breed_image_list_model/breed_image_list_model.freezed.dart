// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'breed_image_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BreedImageListModel _$BreedImageListModelFromJson(Map<String, dynamic> json) {
  return _BreedImageListModel.fromJson(json);
}

/// @nodoc
mixin _$BreedImageListModel {
  List<String>? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BreedImageListModelCopyWith<BreedImageListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BreedImageListModelCopyWith<$Res> {
  factory $BreedImageListModelCopyWith(
          BreedImageListModel value, $Res Function(BreedImageListModel) then) =
      _$BreedImageListModelCopyWithImpl<$Res, BreedImageListModel>;
  @useResult
  $Res call({List<String>? message});
}

/// @nodoc
class _$BreedImageListModelCopyWithImpl<$Res, $Val extends BreedImageListModel>
    implements $BreedImageListModelCopyWith<$Res> {
  _$BreedImageListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BreedImageListModelCopyWith<$Res>
    implements $BreedImageListModelCopyWith<$Res> {
  factory _$$_BreedImageListModelCopyWith(_$_BreedImageListModel value,
          $Res Function(_$_BreedImageListModel) then) =
      __$$_BreedImageListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String>? message});
}

/// @nodoc
class __$$_BreedImageListModelCopyWithImpl<$Res>
    extends _$BreedImageListModelCopyWithImpl<$Res, _$_BreedImageListModel>
    implements _$$_BreedImageListModelCopyWith<$Res> {
  __$$_BreedImageListModelCopyWithImpl(_$_BreedImageListModel _value,
      $Res Function(_$_BreedImageListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_BreedImageListModel(
      message: freezed == message
          ? _value._message
          : message // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BreedImageListModel
    with DiagnosticableTreeMixin
    implements _BreedImageListModel {
  _$_BreedImageListModel({required final List<String>? message})
      : _message = message;

  factory _$_BreedImageListModel.fromJson(Map<String, dynamic> json) =>
      _$$_BreedImageListModelFromJson(json);

  final List<String>? _message;
  @override
  List<String>? get message {
    final value = _message;
    if (value == null) return null;
    if (_message is EqualUnmodifiableListView) return _message;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BreedImageListModel(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BreedImageListModel'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BreedImageListModel &&
            const DeepCollectionEquality().equals(other._message, _message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_message));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BreedImageListModelCopyWith<_$_BreedImageListModel> get copyWith =>
      __$$_BreedImageListModelCopyWithImpl<_$_BreedImageListModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BreedImageListModelToJson(
      this,
    );
  }
}

abstract class _BreedImageListModel implements BreedImageListModel {
  factory _BreedImageListModel({required final List<String>? message}) =
      _$_BreedImageListModel;

  factory _BreedImageListModel.fromJson(Map<String, dynamic> json) =
      _$_BreedImageListModel.fromJson;

  @override
  List<String>? get message;
  @override
  @JsonKey(ignore: true)
  _$$_BreedImageListModelCopyWith<_$_BreedImageListModel> get copyWith =>
      throw _privateConstructorUsedError;
}
