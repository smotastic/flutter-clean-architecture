import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture/core/domain/failure.dart';
import 'package:flutter_clean_architecture/features/dogcarousel/data/models/dog_entry_model.dart';

abstract class DogCarouselDatasourceRemote {
  Future<Either<Failure, DogEntryModel>> fetchRandomDog();
}
