// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audio_book_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AudioBookModelImpl _$$AudioBookModelImplFromJson(Map<String, dynamic> json) =>
    _$AudioBookModelImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      author: json['author'] as String,
      audioUrl: json['audioUrl'] as String,
      subtitleUrl: json['subtitleUrl'] as String,
    );

Map<String, dynamic> _$$AudioBookModelImplToJson(
  _$AudioBookModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'author': instance.author,
  'audioUrl': instance.audioUrl,
  'subtitleUrl': instance.subtitleUrl,
};
