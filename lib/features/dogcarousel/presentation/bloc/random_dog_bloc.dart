import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/features/dogcarousel/domain/entities/dog.dart';
import 'package:injectable/injectable.dart';

part 'random_dog_event.dart';
part 'random_dog_state.dart';

@injectable
class RandomDogBloc extends Bloc<RandomDogEvent, RandomDogState> {
  RandomDogBloc() : super(DogLoadingState());

  @override
  Stream<RandomDogState> mapEventToState(RandomDogEvent event) async* {
    yield DogLoadingState();
    if (event is InitialDogRequestedEvent) {
      yield DogLoadingState();
      yield DogSuccessState(
          Dog("Shiba Inu", "https://cdn2.thedogapi.com/images/tYnqlqNkz.jpg"));
    }
    if (event is InitialDogRequestedEvent) {}
  }
}
