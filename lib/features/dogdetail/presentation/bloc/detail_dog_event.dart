part of 'detail_dog_bloc.dart';

abstract class DetailDogEvent extends Equatable {}

class DogRequestedEvent extends DetailDogEvent {
  final String id;
  DogRequestedEvent(this.id);

  @override
  List<Object?> get props => [this.id];
}
