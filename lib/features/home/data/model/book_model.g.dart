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
      category:
          json['category'] == null
              ? null
              : CategoryModel.fromJson(
                json['category'] as Map<String, dynamic>,
              ),
      chapters:
          (json['chapters'] as List<dynamic>?)
              ?.map((e) => ChapterModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
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
      'category': instance.category,
      'chapters': instance.chapters,
    };
