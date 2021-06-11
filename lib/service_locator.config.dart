// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'features/dogcarousel/data/adapter/dog_carousel_adapter.dart' as _i6;
import 'features/dogcarousel/data/data_sources/dog_carousel_ds_remote.dart'
    as _i3;
import 'features/dogcarousel/data/data_sources/dog_carousel_ds_remote_rest.dart'
    as _i4;
import 'features/dogcarousel/domain/ports/dog_carousel_port.dart' as _i5;
import 'features/dogcarousel/domain/usecases/random_dog_usecase.dart' as _i12;
import 'features/dogcarousel/presentation/bloc/random_dog_bloc.dart' as _i14;
import 'features/dogdetail/data/adapter/dog_detail_adapter.dart' as _i10;
import 'features/dogdetail/data/data_sources/dog_detail_ds_remote.dart' as _i7;
import 'features/dogdetail/data/data_sources/dog_detail_ds_remote_rest.dart'
    as _i8;
import 'features/dogdetail/domain/ports/dog_detail_port.dart' as _i9;
import 'features/dogdetail/domain/usecases/load_dog_usecase.dart' as _i11;
import 'features/dogdetail/presentation/bloc/detail_dog_bloc.dart'
    as _i13; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.DogCarouselDatasourceRemote>(
      () => _i4.DogCarouselDatasourceRemoteRest());
  gh.lazySingleton<_i5.DogCarouselPort>(
      () => _i6.DogCarouselAdapter(get<_i3.DogCarouselDatasourceRemote>()));
  gh.lazySingleton<_i7.DogDetailDataSourceRemote>(
      () => _i8.DogDetailDataSourceRemoteRest());
  gh.lazySingleton<_i9.DogDetailPort>(
      () => _i10.DogDetailAdapter(get<_i7.DogDetailDataSourceRemote>()));
  gh.lazySingleton<_i11.LoadDogUseCase>(
      () => _i11.LoadDogUseCaseImpl(get<_i9.DogDetailPort>()));
  gh.lazySingleton<_i12.RandomDogUseCase>(
      () => _i12.RandomDogUseCaseImpl(get<_i5.DogCarouselPort>()));
  gh.factory<_i13.DetailDogBloc>(
      () => _i13.DetailDogBloc(get<_i11.LoadDogUseCase>()));
  gh.factory<_i14.RandomDogBloc>(
      () => _i14.RandomDogBloc(get<_i12.RandomDogUseCase>()));
  return get;
}
