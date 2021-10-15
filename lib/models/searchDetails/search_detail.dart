import 'package:json_annotation/json_annotation.dart';

part 'search_detail.g.dart';

@JsonSerializable()
class DetailData{
  final Detail? data;

  DetailData({this.data});

  factory DetailData.fromJson(Object? json) =>
      _$DetailDataFromJson(json as Map<String,dynamic>);

  Map<String, dynamic> toJson() => _$DetailDataToJson(this);
}

@JsonSerializable()
class Detail{
  final List? items;
  final List<Post>? posts;
  final List<Event>? events;

  Detail({this.events,this.items,this.posts});

  factory Detail.fromJson(Object? json) =>
      _$DetailFromJson(json as Map<String,dynamic>);

  Map<String, dynamic> toJson() => _$DetailToJson(this);
}

@JsonSerializable()
class Post {
  final int? id;
  final String? title;
  final String? heroimage;
  final int? publish;
  final String? link;
  final String? photo;
  final String? company;
  final String? start;
  final String? end;

  Post({
    this.title,
    this.heroimage,
    this.end,
    this.start,
    this.id,
    this.company,
    this.link,
    this.photo,
    this.publish
  });

  factory Post.fromJson(Object? json) =>
      _$PostFromJson(json as Map<String, dynamic>);

  Map<String, dynamic> toJson() => _$PostToJson(this);

}

@JsonSerializable()
class Event {
  final int? id;
  final String? title;
  final String? link;
  final String? photo;
  final int? brand_id;
  final int? item_id;
  final String? created_at;
  final String? updated_at;
  final int? registry_id;
  final int? priority;
  final int? publish;
  final String? dcrate;
  final String? dcprice;
  final String? listprice;
  final int? my_bookmark;
  final Brand? brand;


  factory Event.fromJson(Object? json) =>
      _$EventFromJson(json as Map<String, dynamic>);

  Event(
      {this.id,
      this.title,
      this.link,
      this.photo,
      this.brand_id,
      this.item_id,
      this.created_at,
      this.updated_at,
      this.registry_id,
      this.priority,
      this.publish,
      this.dcrate,
      this.dcprice,
      this.listprice,
      this.my_bookmark,
      this.brand});

  Map<String, dynamic> toJson() => _$EventToJson(this);

}


@JsonSerializable()
class Brand {
  final int? id;
  final String? name;
  final String? description;
  final String? option;
  final String? created_at;
  final String? updated_at;

  Brand(
      {this.id,
      this.name,
      this.description,
      this.option,
      this.created_at,
      this.updated_at});

  factory Brand.fromJson(Object? json) =>
      _$BrandFromJson(json as Map<String, dynamic>);

  Map<String, dynamic> toJson() => _$BrandToJson(this);
}