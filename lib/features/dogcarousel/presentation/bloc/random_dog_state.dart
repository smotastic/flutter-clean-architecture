part of './random_dog_bloc.dart';

abstract class RandomDogState extends Equatable {}

class DogLoadingState extends RandomDogState {
  @override
  List<Object?> get props => [];
}

class DogSuccessState extends RandomDogState {
  final Dog loadedDog;
  DogSuccessState(this.loadedDog);
  @override
  List<Object?> get props => [loadedDog];
}
