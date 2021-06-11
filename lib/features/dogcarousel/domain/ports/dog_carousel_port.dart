import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture/core/domain/failure.dart';
import 'package:flutter_clean_architecture/features/dogcarousel/domain/entities/dog_entry.dart';

abstract class DogCarouselPort {
  Future<Either<Failure, DogEntry>> fetchRandomDog();
}
