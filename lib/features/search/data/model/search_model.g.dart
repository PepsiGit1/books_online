// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchModelImpl _$$SearchModelImplFromJson(Map<String, dynamic> json) =>
    _$SearchModelImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      author: json['author'] as String?,
      coverImageUrl: json['coverImageUrl'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      progress: (json['progress'] as num?)?.toDouble(),
      categoryId: (json['categoryId'] as num).toInt(),
      isPremium: json['isPremium'] as bool? ?? false,
      isSaved: json['isSaved'] as bool? ?? false,
    );

Map<String, dynamic> _$$SearchModelImplToJson(_$SearchModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'author': instance.author,
      'coverImageUrl': instance.coverImageUrl,
      'rating': instance.rating,
      'progress': instance.progress,
      'categoryId': instance.categoryId,
      'isPremium': instance.isPremium,
      'isSaved': instance.isSaved,
    };
