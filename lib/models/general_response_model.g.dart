// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'general_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListResponseModel<T> _$ListResponseModelFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) {
  return ListResponseModel<T>(
    resultCode: json['resultCode'] as String,
    data: ListResponseModelData.fromJson(
        json['data'] as Map<String, dynamic>, (value) => fromJsonT(value)),
  );
}

Map<String, dynamic> _$ListResponseModelToJson<T>(
  ListResponseModel<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'resultCode': instance.resultCode,
      'data': instance.data.toJson(
        (value) => toJsonT(value),
      ),
    };

ListResponseModelData<T> _$ListResponseModelDataFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) {
  return ListResponseModelData<T>(
    values: (json['values'] as List<dynamic>).map(fromJsonT).toList(),
  );
}

Map<String, dynamic> _$ListResponseModelDataToJson<T>(
  ListResponseModelData<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'values': instance.values.map(toJsonT).toList(),
    };
