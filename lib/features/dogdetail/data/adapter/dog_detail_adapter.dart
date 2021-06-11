import 'package:flutter_clean_architecture/features/dogdetail/data/data_sources/dog_detail_ds_remote.dart';
import 'package:flutter_clean_architecture/features/dogdetail/data/models/dog_model_mapper.dart';
import 'package:flutter_clean_architecture/features/dogdetail/domain/entities/dog.dart';
import 'package:flutter_clean_architecture/core/domain/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture/features/dogdetail/domain/ports/dog_detail_port.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: DogDetailPort)
class DogDetailAdapter extends DogDetailPort {
  final DogDetailDataSourceRemote dataSource;

  DogDetailAdapter(this.dataSource);

  @override
  Future<Either<Failure, Dog>> loadDogById(String id) async {
    final result = await dataSource.loadById(id);
    return result.fold(
        (l) => Left(l), (r) => Right(DogModelMapper.instance.fromModel(r)));
  }
}
