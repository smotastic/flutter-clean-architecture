import 'package:flutter_clean_architecture/core/domain/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture/core/domain/usecase.dart';
import 'package:flutter_clean_architecture/features/dogcarousel/domain/entities/dog_entry.dart';
import 'package:flutter_clean_architecture/features/dogcarousel/domain/ports/dog_carousel_port.dart';
import 'package:injectable/injectable.dart';

abstract class RandomDogUseCase extends UseCase<DogEntry, NoParams> {}

@LazySingleton(as: RandomDogUseCase)
class RandomDogUseCaseImpl extends RandomDogUseCase {
  final DogCarouselPort _port;

  RandomDogUseCaseImpl(this._port);

  @override
  Future<Either<Failure, DogEntry>> execute(NoParams params) async {
    return _port.fetchRandomDog();
  }
}
