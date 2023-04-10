import 'package:freezed_annotation/freezed_annotation.dart';

part 'bus_driver_model_class.freezed.dart';
part 'bus_driver_model_class.g.dart';

@freezed
class BusDriverModel with _$BusDriverModel {
  const factory BusDriverModel({
    int? id,
    String? name,
    String? mobile,
    @JsonKey(name: "license_no")String? licenseNo,
  }) = _BusDriverModel;

  factory BusDriverModel.fromJson(Map<String, dynamic> json) =>
      _$BusDriverModelFromJson(json);
}
