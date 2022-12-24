// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'breed_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BreedListModel _$BreedListModelFromJson(Map<String, dynamic> json) {
  return _BreedListModel.fromJson(json);
}

/// @nodoc
mixin _$BreedListModel {
  Map<String, dynamic>? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BreedListModelCopyWith<BreedListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BreedListModelCopyWith<$Res> {
  factory $BreedListModelCopyWith(
          BreedListModel value, $Res Function(BreedListModel) then) =
      _$BreedListModelCopyWithImpl<$Res, BreedListModel>;
  @useResult
  $Res call({Map<String, dynamic>? message});
}

/// @nodoc
class _$BreedListModelCopyWithImpl<$Res, $Val extends BreedListModel>
    implements $BreedListModelCopyWith<$Res> {
  _$BreedListModelCopyWithImpl(this._value, this._then);

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
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BreedListModelCopyWith<$Res>
    implements $BreedListModelCopyWith<$Res> {
  factory _$$_BreedListModelCopyWith(
          _$_BreedListModel value, $Res Function(_$_BreedListModel) then) =
      __$$_BreedListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, dynamic>? message});
}

/// @nodoc
class __$$_BreedListModelCopyWithImpl<$Res>
    extends _$BreedListModelCopyWithImpl<$Res, _$_BreedListModel>
    implements _$$_BreedListModelCopyWith<$Res> {
  __$$_BreedListModelCopyWithImpl(
      _$_BreedListModel _value, $Res Function(_$_BreedListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_BreedListModel(
      message: freezed == message
          ? _value._message
          : message // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BreedListModel
    with DiagnosticableTreeMixin
    implements _BreedListModel {
  _$_BreedListModel({required final Map<String, dynamic>? message})
      : _message = message;

  factory _$_BreedListModel.fromJson(Map<String, dynamic> json) =>
      _$$_BreedListModelFromJson(json);

  final Map<String, dynamic>? _message;
  @override
  Map<String, dynamic>? get message {
    final value = _message;
    if (value == null) return null;
    if (_message is EqualUnmodifiableMapView) return _message;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BreedListModel(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BreedListModel'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BreedListModel &&
            const DeepCollectionEquality().equals(other._message, _message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_message));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BreedListModelCopyWith<_$_BreedListModel> get copyWith =>
      __$$_BreedListModelCopyWithImpl<_$_BreedListModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BreedListModelToJson(
      this,
    );
  }
}

abstract class _BreedListModel implements BreedListModel {
  factory _BreedListModel({required final Map<String, dynamic>? message}) =
      _$_BreedListModel;

  factory _BreedListModel.fromJson(Map<String, dynamic> json) =
      _$_BreedListModel.fromJson;

  @override
  Map<String, dynamic>? get message;
  @override
  @JsonKey(ignore: true)
  _$$_BreedListModelCopyWith<_$_BreedListModel> get copyWith =>
      throw _privateConstructorUsedError;
}
