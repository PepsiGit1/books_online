// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChapterModelImpl _$$ChapterModelImplFromJson(Map<String, dynamic> json) =>
    _$ChapterModelImpl(
      id: (json['id'] as num).toInt(),
      bookId: (json['bookId'] as num).toInt(),
      chapterNo: (json['chapterNo'] as num).toInt(),
      title: json['title'] as String,
      audioUrl: json['audioUrl'] as String,
      subtitleUrl: json['subtitleUrl'] as String,
    );

Map<String, dynamic> _$$ChapterModelImplToJson(_$ChapterModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bookId': instance.bookId,
      'chapterNo': instance.chapterNo,
      'title': instance.title,
      'audioUrl': instance.audioUrl,
      'subtitleUrl': instance.subtitleUrl,
    };
