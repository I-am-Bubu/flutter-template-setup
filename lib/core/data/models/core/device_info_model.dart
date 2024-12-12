import 'package:json_annotation/json_annotation.dart';

part 'device_info_model.g.dart';

@JsonSerializable()
class DeviceInfoModel {
  @JsonKey(name: 'x-device-id')
  final String? xDeviceId;
  @JsonKey(name: 'x-device-system')
  final String? xDeviceSystem;
  @JsonKey(name: 'x-device-name')
  final String? xDeviceName;
  @JsonKey(name: 'x-device-machine')
  final String? xDeviceMachine;
  @JsonKey(name: 'x-device-version')
  final String? xDeviceVersion;
  @JsonKey(name: 'x-app-version')
  final String? xAppVersion;
  @JsonKey(name: 'x-app-build-number')
  final String? xAppBuildNumber;
  @JsonKey(name: 'x-is-physical-device')
  final bool? xIsPhysicalDevice;

  DeviceInfoModel({
    this.xDeviceId,
    this.xDeviceSystem,
    this.xDeviceName,
    this.xDeviceMachine,
    this.xDeviceVersion,
    this.xAppVersion,
    this.xAppBuildNumber,
    this.xIsPhysicalDevice,
  });

  factory DeviceInfoModel.fromJson(Map<String, dynamic> json) => _$DeviceInfoModelFromJson(json);
  Map<String, dynamic> toJson() => _$DeviceInfoModelToJson(this);

  @override
  String toString() {
    return 'DeviceInfoModel(xDeviceId: $xDeviceId, xDeviceSystem: $xDeviceSystem, xDeviceName: $xDeviceName, xDeviceMachine: $xDeviceMachine, xDeviceVersion: $xDeviceVersion, xAppVersion: $xAppVersion, xAppBuildNumber: $xAppBuildNumber, xIsPhysicalDevice: $xIsPhysicalDevice)';
  }
}
