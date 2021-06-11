import 'package:flutter_clean_architecture/features/dogcarousel/data/data_sources/dog_carousel_datasource.dart';
import 'package:flutter_clean_architecture/features/dogcarousel/domain/entities/dog_entry.dart';
import 'package:flutter_clean_architecture/core/domain/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture/features/dogcarousel/domain/ports/dog_carousel_port.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: DogCarouselPort)
class DogCarouselAdapter extends DogCarouselPort {
  final DogCarouselDatasourceRemote datasourceRemote;

  DogCarouselAdapter(this.datasourceRemote);

  @override
  Future<Either<Failure, DogEntry>> fetchRandomDog() async {
    var result = await datasourceRemote.fetchRandomDog();
    return result.fold((l) => Left(l), (r) => Right(DogEntry(r.name, r.url)));
  }
}
