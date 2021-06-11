import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture/core/domain/failure.dart';
import 'package:flutter_clean_architecture/features/dogdetail/data/models/dog_model.dart';

abstract class DogDetailDataSourceRemote {
  Future<Either<Failure, DogModel>> loadById(String id);
}
