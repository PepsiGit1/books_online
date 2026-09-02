// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carousel_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CarouselModelImpl _$$CarouselModelImplFromJson(Map<String, dynamic> json) =>
    _$CarouselModelImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      author: json['author'] as String?,
      img: json['img'] as String?,
    );

Map<String, dynamic> _$$CarouselModelImplToJson(_$CarouselModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'author': instance.author,
      'img': instance.img,
    };
