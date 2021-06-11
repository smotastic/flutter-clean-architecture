import 'package:flutter_clean_architecture/core/domain/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture/core/domain/usecase.dart';
import 'package:flutter_clean_architecture/features/dogdetail/domain/entities/dog.dart';
import 'package:flutter_clean_architecture/features/dogdetail/domain/ports/dog_detail_port.dart';
import 'package:injectable/injectable.dart';

class LoadDogParams extends Params {
  final String id;

  LoadDogParams(this.id);

  @override
  List<Object?> get props => [this.id];
}

abstract class LoadDogUseCase extends UseCase<Dog, LoadDogParams> {}

@LazySingleton(as: LoadDogUseCase)
class LoadDogUseCaseImpl extends LoadDogUseCase {
  final DogDetailPort _port;

  LoadDogUseCaseImpl(this._port);

  @override
  Future<Either<Failure, Dog>> execute(LoadDogParams params) async {
    return _port.loadDogById(params.id);
  }
}
