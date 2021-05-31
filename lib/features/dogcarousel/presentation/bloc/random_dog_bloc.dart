import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/core/domain/failure.dart';
import 'package:flutter_clean_architecture/core/domain/usecase.dart';
import 'package:flutter_clean_architecture/features/dogcarousel/domain/entities/dog.dart';
import 'package:flutter_clean_architecture/features/dogcarousel/domain/usecases/random_dog_usecase.dart';
import 'package:injectable/injectable.dart';

part 'random_dog_event.dart';
part 'random_dog_state.dart';

@injectable
class RandomDogBloc extends Bloc<RandomDogEvent, RandomDogState> {
  final RandomDogUseCase randomDog;

  RandomDogBloc(this.randomDog) : super(DogLoadingState());

  @override
  Stream<RandomDogState> mapEventToState(RandomDogEvent event) async* {
    yield DogLoadingState();
    if (event is InitialDogRequestedEvent) {
      yield DogLoadingState();
      final dog = await randomDog(NoParams());
      yield dog.fold((l) => DogErrorState(l), (r) => DogSuccessState(r));
    }
    if (event is InitialDogRequestedEvent) {}
  }
}
