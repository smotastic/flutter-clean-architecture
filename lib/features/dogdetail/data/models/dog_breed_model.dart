import 'package:json_annotation/json_annotation.dart';

part 'dog_breed_model.g.dart';

@JsonSerializable()
class DogBreedModel {
  final num id;
  @JsonKey(defaultValue: '')
  final String name;
  @JsonKey(name: 'bred_for', defaultValue: '')
  final String bredFor;
  @JsonKey(name: 'breed_group', defaultValue: '')
  final String breedGroup;
  @JsonKey(name: 'life_span', defaultValue: '')
  final String lifeSpan;
  @JsonKey(defaultValue: '')
  final String temperament;

  // DogBreedModel(this.id, this.name, this.bredFor, this.breedGroup,
  //     this.lifeSpan, this.temperament);

  factory DogBreedModel.fromJson(Map<String, dynamic> json) =>
      _$DogBreedModelFromJson(json);

  DogBreedModel(this.id, this.name, this.bredFor, this.breedGroup,
      this.lifeSpan, this.temperament);

  Map<String, dynamic> toJson() => _$DogBreedModelToJson(this);
}
