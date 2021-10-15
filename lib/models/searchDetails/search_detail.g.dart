// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DetailData _$DetailDataFromJson(Map<String, dynamic> json) {
  return DetailData(
    data: json['data'] == null ? null : Detail.fromJson(json['data'] as Object),
  );
}

Map<String, dynamic> _$DetailDataToJson(DetailData instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

Detail _$DetailFromJson(Map<String, dynamic> json) {
  return Detail(
    events: (json['events'] as List<dynamic>?)
        ?.map((e) => Event.fromJson(e as Object))
        .toList(),
    items: json['items'] as List<dynamic>?,
    posts: (json['posts'] as List<dynamic>?)
        ?.map((e) => Post.fromJson(e as Object))
        .toList(),
  );
}

Map<String, dynamic> _$DetailToJson(Detail instance) => <String, dynamic>{
      'items': instance.items,
      'posts': instance.posts,
      'events': instance.events,
    };

Post _$PostFromJson(Map<String, dynamic> json) {
  return Post(
    title: json['title'] as String?,
    heroimage: json['heroimage'] as String?,
    end: json['end'] as String?,
    start: json['start'] as String?,
    id: json['id'] as int?,
    company: json['company'] as String?,
    link: json['link'] as String?,
    photo: json['photo'] as String?,
    publish: json['publish'] as int?,
  );
}

Map<String, dynamic> _$PostToJson(Post instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'heroimage': instance.heroimage,
      'publish': instance.publish,
      'link': instance.link,
      'photo': instance.photo,
      'company': instance.company,
      'start': instance.start,
      'end': instance.end,
    };

Event _$EventFromJson(Map<String, dynamic> json) {
  return Event(
    id: json['id'] as int?,
    title: json['title'] as String?,
    link: json['link'] as String?,
    photo: json['photo'] as String?,
    brand_id: json['brand_id'] as int?,
    item_id: json['item_id'] as int?,
    created_at: json['created_at'] as String?,
    updated_at: json['updated_at'] as String?,
    registry_id: json['registry_id'] as int?,
    priority: json['priority'] as int?,
    publish: json['publish'] as int?,
    dcrate: json['dcrate'] as String?,
    dcprice: json['dcprice'] as String?,
    listprice: json['listprice'] as String?,
    my_bookmark: json['my_bookmark'] as int?,
    barnd:
        json['barnd'] == null ? null : Brand.fromJson(json['barnd'] as Object),
  );
}

Map<String, dynamic> _$EventToJson(Event instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'link': instance.link,
      'photo': instance.photo,
      'brand_id': instance.brand_id,
      'item_id': instance.item_id,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'registry_id': instance.registry_id,
      'priority': instance.priority,
      'publish': instance.publish,
      'dcrate': instance.dcrate,
      'dcprice': instance.dcprice,
      'listprice': instance.listprice,
      'my_bookmark': instance.my_bookmark,
      'barnd': instance.barnd,
    };

Brand _$BrandFromJson(Map<String, dynamic> json) {
  return Brand(
    id: json['id'] as String?,
    name: json['name'] as String?,
    description: json['description'] as String?,
    option: json['option'] as String?,
    created_at: json['created_at'] as String?,
    updated_at: json['updated_at'] as String?,
  );
}

Map<String, dynamic> _$BrandToJson(Brand instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'option': instance.option,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };
