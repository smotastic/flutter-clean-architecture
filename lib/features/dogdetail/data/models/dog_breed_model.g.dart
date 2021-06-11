// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dog_breed_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DogBreedModel _$DogBreedModelFromJson(Map<String, dynamic> json) {
  return DogBreedModel(
    json['id'] as num,
    json['name'] as String? ?? '',
    json['bred_for'] as String? ?? '',
    json['breed_group'] as String? ?? '',
    json['life_span'] as String? ?? '',
    json['temperament'] as String? ?? '',
  );
}

Map<String, dynamic> _$DogBreedModelToJson(DogBreedModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'bred_for': instance.bredFor,
      'breed_group': instance.breedGroup,
      'life_span': instance.lifeSpan,
      'temperament': instance.temperament,
    };
