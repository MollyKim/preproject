// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serach_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetSearchResult _$GetSearchResultFromJson(Map<String, dynamic> json) {
  return GetSearchResult(
    id: json['id'] as int?,
    name: json['name'] as String?,
    search_count: json['search_count'] as int?,
    use_count: json['use_count'] as int?,
    created_at: json['created_at'] as String?,
    updated_at: json['updated_at'] as String?,
  );
}

Map<String, dynamic> _$GetSearchResultToJson(GetSearchResult instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'search_count': instance.search_count,
      'use_count': instance.use_count,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };
