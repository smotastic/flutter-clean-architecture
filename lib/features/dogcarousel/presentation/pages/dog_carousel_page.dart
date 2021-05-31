import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/features/dogcarousel/presentation/bloc/random_dog_bloc.dart';
import 'package:flutter_clean_architecture/features/dogcarousel/presentation/widgets/dog_card.dart';
import 'package:get_it/get_it.dart';

class DogCarouselPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => GetIt.I<RandomDogBloc>()..add(InitialDogRequestedEvent()),
      child: DogCarouselView(),
    );
  }
}

class DogCarouselView extends StatelessWidget {
  const DogCarouselView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dog Carousel"),
      ),
      body: BlocBuilder<RandomDogBloc, RandomDogState>(
        builder: (ctx, state) {
          if (state is DogSuccessState) {
            return DogCard(state.loadedDog);
          }
          if (state is DogErrorState) {
            return Text('${state.failure.code}');
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
