import 'package:flutter_clean_architecture/core/domain/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture/features/dogdetail/data/data_sources/dog_detail_ds_remote.dart';
import 'package:flutter_clean_architecture/features/dogdetail/data/models/dog_model.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: DogDetailDataSourceRemote)
class DogDetailDataSourceRemoteRest extends DogDetailDataSourceRemote {
  @override
  Future<Either<Failure, DogModel>> loadById(String id) async {
    return Right(DogModel("", ""));
  }
}
