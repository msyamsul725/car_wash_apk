// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_wash.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CarWash _$$_CarWashFromJson(Map<String, dynamic> json) => _$_CarWash(
      id: json['id'] as String?,
      shopName: json['shop_name'] as String?,
      photo: json['photo'] as String?,
      addres: json['addres'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$_CarWashToJson(_$_CarWash instance) =>
    <String, dynamic>{
      'id': instance.id,
      'shop_name': instance.shopName,
      'photo': instance.photo,
      'addres': instance.addres,
      'rating': instance.rating,
      'description': instance.description,
    };
