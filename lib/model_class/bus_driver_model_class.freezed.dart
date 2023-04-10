// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bus_driver_model_class.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BusDriverModel _$BusDriverModelFromJson(Map<String, dynamic> json) {
  return _BusDriverModel.fromJson(json);
}

/// @nodoc
mixin _$BusDriverModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get mobile => throw _privateConstructorUsedError;
  @JsonKey(name: "license_no")
  String? get licenseNo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BusDriverModelCopyWith<BusDriverModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusDriverModelCopyWith<$Res> {
  factory $BusDriverModelCopyWith(
          BusDriverModel value, $Res Function(BusDriverModel) then) =
      _$BusDriverModelCopyWithImpl<$Res, BusDriverModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? mobile,
      @JsonKey(name: "license_no") String? licenseNo});
}

/// @nodoc
class _$BusDriverModelCopyWithImpl<$Res, $Val extends BusDriverModel>
    implements $BusDriverModelCopyWith<$Res> {
  _$BusDriverModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? mobile = freezed,
    Object? licenseNo = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      licenseNo: freezed == licenseNo
          ? _value.licenseNo
          : licenseNo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BusDriverModelCopyWith<$Res>
    implements $BusDriverModelCopyWith<$Res> {
  factory _$$_BusDriverModelCopyWith(
          _$_BusDriverModel value, $Res Function(_$_BusDriverModel) then) =
      __$$_BusDriverModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? mobile,
      @JsonKey(name: "license_no") String? licenseNo});
}

/// @nodoc
class __$$_BusDriverModelCopyWithImpl<$Res>
    extends _$BusDriverModelCopyWithImpl<$Res, _$_BusDriverModel>
    implements _$$_BusDriverModelCopyWith<$Res> {
  __$$_BusDriverModelCopyWithImpl(
      _$_BusDriverModel _value, $Res Function(_$_BusDriverModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? mobile = freezed,
    Object? licenseNo = freezed,
  }) {
    return _then(_$_BusDriverModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      licenseNo: freezed == licenseNo
          ? _value.licenseNo
          : licenseNo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BusDriverModel implements _BusDriverModel {
  const _$_BusDriverModel(
      {this.id,
      this.name,
      this.mobile,
      @JsonKey(name: "license_no") this.licenseNo});

  factory _$_BusDriverModel.fromJson(Map<String, dynamic> json) =>
      _$$_BusDriverModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? mobile;
  @override
  @JsonKey(name: "license_no")
  final String? licenseNo;

  @override
  String toString() {
    return 'BusDriverModel(id: $id, name: $name, mobile: $mobile, licenseNo: $licenseNo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BusDriverModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.licenseNo, licenseNo) ||
                other.licenseNo == licenseNo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, mobile, licenseNo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BusDriverModelCopyWith<_$_BusDriverModel> get copyWith =>
      __$$_BusDriverModelCopyWithImpl<_$_BusDriverModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BusDriverModelToJson(
      this,
    );
  }
}

abstract class _BusDriverModel implements BusDriverModel {
  const factory _BusDriverModel(
          {final int? id,
          final String? name,
          final String? mobile,
          @JsonKey(name: "license_no") final String? licenseNo}) =
      _$_BusDriverModel;

  factory _BusDriverModel.fromJson(Map<String, dynamic> json) =
      _$_BusDriverModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get mobile;
  @override
  @JsonKey(name: "license_no")
  String? get licenseNo;
  @override
  @JsonKey(ignore: true)
  _$$_BusDriverModelCopyWith<_$_BusDriverModel> get copyWith =>
      throw _privateConstructorUsedError;
}
