// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dog_model_mapper.dart';

// **************************************************************************
// MapperGenerator
// **************************************************************************

class DogModelMapperImpl extends DogModelMapper {
  @override
  Dog fromModel(DogModel model) {
    final dog = Dog(model.id, model.url, fromBreedModel(model.breed));
    return dog;
  }

  @override
  DogBreed? fromBreedModel(DogBreedModel? model) {
    if (model == null) {
      return null;
    }
    ;
    final dogbreed = DogBreed(model.id, model.name, model.bredFor,
        model.breedGroup, model.lifeSpan, model.temperament);
    return dogbreed;
  }
}
