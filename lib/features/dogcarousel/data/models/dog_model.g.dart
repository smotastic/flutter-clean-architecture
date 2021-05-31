// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dog_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DogModel _$DogModelFromJson(Map<String, dynamic> json) {
  return DogModel(
    json['id'] as String,
    json['url'] as String,
  );
}

Map<String, dynamic> _$DogModelToJson(DogModel instance) => <String, dynamic>{
      'id': instance.name,
      'url': instance.url,
    };
