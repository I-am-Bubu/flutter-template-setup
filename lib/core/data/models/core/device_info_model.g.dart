// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeviceInfoModel _$DeviceInfoModelFromJson(Map<String, dynamic> json) =>
    DeviceInfoModel(
      xDeviceId: json['x-device-id'] as String?,
      xDeviceSystem: json['x-device-system'] as String?,
      xDeviceName: json['x-device-name'] as String?,
      xDeviceMachine: json['x-device-machine'] as String?,
      xDeviceVersion: json['x-device-version'] as String?,
      xAppVersion: json['x-app-version'] as String?,
      xAppBuildNumber: json['x-app-build-number'] as String?,
      xIsPhysicalDevice: json['x-is-physical-device'] as bool?,
    );

Map<String, dynamic> _$DeviceInfoModelToJson(DeviceInfoModel instance) =>
    <String, dynamic>{
      'x-device-id': instance.xDeviceId,
      'x-device-system': instance.xDeviceSystem,
      'x-device-name': instance.xDeviceName,
      'x-device-machine': instance.xDeviceMachine,
      'x-device-version': instance.xDeviceVersion,
      'x-app-version': instance.xAppVersion,
      'x-app-build-number': instance.xAppBuildNumber,
      'x-is-physical-device': instance.xIsPhysicalDevice,
    };
