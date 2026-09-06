// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookModelImpl _$$BookModelImplFromJson(Map<String, dynamic> json) =>
    _$BookModelImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      author: json['author'] as String?,
      productId: json['productId'] as String,
      coverImageUrl: json['coverImageUrl'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      progress: (json['progress'] as num?)?.toDouble(),
      categoryId: (json['categoryId'] as num).toInt(),
      isPremium: json['isPremium'] as bool? ?? false,
      isSaved: json['isSaved'] as bool? ?? false,
      price: (json['price'] as num?)?.toDouble() ?? 0.0,
      audioUrl: json['audioUrl'] as String? ?? "",
      subtitleUrl: json['subtitleUrl'] as String? ?? "",
      category:
          json['category'] == null
              ? null
              : CategoryModel.fromJson(
                json['category'] as Map<String, dynamic>,
              ),
    );

Map<String, dynamic> _$$BookModelImplToJson(_$BookModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'author': instance.author,
      'productId': instance.productId,
      'coverImageUrl': instance.coverImageUrl,
      'rating': instance.rating,
      'progress': instance.progress,
      'categoryId': instance.categoryId,
      'isPremium': instance.isPremium,
      'isSaved': instance.isSaved,
      'price': instance.price,
      'audioUrl': instance.audioUrl,
      'subtitleUrl': instance.subtitleUrl,
      'category': instance.category,
    };
