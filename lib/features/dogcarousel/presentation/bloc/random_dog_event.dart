part of 'random_dog_bloc.dart';

abstract class RandomDogEvent extends Equatable {}

class InitialDogRequestedEvent extends RandomDogEvent {
  @override
  List<Object?> get props => [];
}
