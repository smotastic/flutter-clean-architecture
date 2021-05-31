// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'features/dogcarousel/data/adapter/dog_carousel_adapter.dart' as _i6;
import 'features/dogcarousel/data/data_sources/dog_carousel_datasource.dart'
    as _i3;
import 'features/dogcarousel/data/data_sources/dog_carousel_datasource_remote.dart'
    as _i4;
import 'features/dogcarousel/domain/ports/dog_carousel_port.dart' as _i5;
import 'features/dogcarousel/domain/usecases/random_dog_usecase.dart' as _i7;
import 'features/dogcarousel/presentation/bloc/random_dog_bloc.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.DogCarouselDatasourceRemote>(
      () => _i4.DogCarouselDatasourceRemoteRest());
  gh.lazySingleton<_i5.DogCarouselPort>(
      () => _i6.DogCarouselAdapter(get<_i3.DogCarouselDatasourceRemote>()));
  gh.lazySingleton<_i7.RandomDogUseCase>(
      () => _i7.RandomDogUseCaseImpl(get<_i5.DogCarouselPort>()));
  gh.factory<_i8.RandomDogBloc>(
      () => _i8.RandomDogBloc(get<_i7.RandomDogUseCase>()));
  return get;
}
