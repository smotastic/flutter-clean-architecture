import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/features/dogcarousel/presentation/bloc/random_dog_bloc.dart';
import 'package:flutter_clean_architecture/features/dogcarousel/presentation/widgets/dog_carousel_card.dart';
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
      body: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 5,
        child: BlocBuilder<RandomDogBloc, RandomDogState>(
          builder: (ctx, state) {
            return Column(
              children: [
                if (state is DogSuccessState) DogCarouselCard(state.loadedDog),
                if (state is DogErrorState) Text('${state.failure.code}'),
                if (state is DogLoadingState)
                  Center(
                    child: CircularProgressIndicator(),
                  ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          BlocProvider.of<RandomDogBloc>(context)
                              .add(InitialDogRequestedEvent());
                        },
                        icon: Icon(Icons.arrow_left),
                        color: Theme.of(context).primaryColor,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_right),
                        color: Theme.of(context).errorColor,
                      ),
                    ],
                  ),
                ),
              ],
            );

            // if (state is DogSuccessState) {
            //   return DogCard(state.loadedDog);
            // }
            // if (state is DogErrorState) {
            //   return Text('${state.failure.code}');
            // }
            // return Center(
            //   child: CircularProgressIndicator(),
            // );
          },
        ),
      ),
    );
  }
}
