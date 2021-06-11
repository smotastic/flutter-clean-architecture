import 'package:flutter_clean_architecture/features/dogdetail/data/models/dog_breed_model.dart';
import 'package:flutter_clean_architecture/features/dogdetail/data/models/dog_model.dart';
import 'package:flutter_clean_architecture/features/dogdetail/domain/entities/dog.dart';
import 'package:flutter_clean_architecture/features/dogdetail/domain/entities/dog_breed.dart';
import 'package:smartstruct/annotations.dart';
part 'dog_model_mapper.g.dart';

@Mapper()
abstract class DogModelMapper {
  static DogModelMapper get instance => DogModelMapperImpl();
  Dog fromModel(DogModel model);
  DogBreed? fromBreedModel(DogBreedModel? model);
}
