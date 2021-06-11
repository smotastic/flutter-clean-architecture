part of 'detail_dog_bloc.dart';

abstract class DetailDogState extends Equatable {}

class DetailDogLoading extends DetailDogState {
  @override
  List<Object?> get props => [];
}

class DetailDogSuccess extends DetailDogState {
  final Dog dog;

  DetailDogSuccess(this.dog);

  @override
  List<Object?> get props => [this.dog];
}

class DetailDogFailure extends DetailDogState {
  final Failure failure;

  DetailDogFailure(this.failure);

  @override
  List<Object?> get props => [this.failure];
}
