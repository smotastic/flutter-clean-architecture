import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture/core/domain/failure.dart';
import 'package:flutter_clean_architecture/features/dogdetail/domain/entities/dog.dart';

abstract class DogDetailPort {
  Future<Either<Failure, Dog>> loadDogById(String id);
}
