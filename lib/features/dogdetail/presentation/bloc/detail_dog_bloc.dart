import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/core/domain/failure.dart';
import 'package:flutter_clean_architecture/features/dogdetail/domain/entities/dog.dart';
import 'package:flutter_clean_architecture/features/dogdetail/domain/usecases/load_dog_usecase.dart';
import 'package:injectable/injectable.dart';
part 'detail_dog_state.dart';

part 'detail_dog_event.dart';

@injectable
class DetailDogBloc extends Bloc<DetailDogEvent, DetailDogState> {
  final LoadDogUseCase loadDog;

  DetailDogBloc(this.loadDog) : super(DetailDogLoading());

  @override
  Stream<DetailDogState> mapEventToState(DetailDogEvent event) async* {
    yield DetailDogLoading();
    if (event is DogRequestedEvent) {
      final result = await loadDog(LoadDogParams(event.id));
      yield result.fold((l) => DetailDogFailure(l), (r) => DetailDogSuccess(r));
    }
  }
}
