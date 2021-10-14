import 'package:json_annotation/json_annotation.dart';

part 'serach_model.g.dart';

@JsonSerializable()
class GetSearchResult {
  int? id;
  String? name;
  int? search_count;
  int? use_count;
  String? created_at;
  String? updated_at;

  GetSearchResult({
    this.id,
    this.name,
    this.search_count,
    this.use_count,
    this.created_at,
    this.updated_at,
  });

  factory GetSearchResult.fromJson(Object? json) =>
      _$GetSearchResultFromJson(json as Map<String, dynamic>);

  Map<String, dynamic> toJson() => _$GetSearchResultToJson(this);

}