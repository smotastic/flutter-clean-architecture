import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/features/dogcarousel/domain/entities/dog.dart';
import 'package:flutter_clean_architecture/features/dogcarousel/presentation/bloc/random_dog_bloc.dart';

class DogCard extends StatelessWidget {
  final Dog dog;

  const DogCard(
    this.dog, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 5,
        child: Column(
          children: [
            Image.network(
              dog.url,
              fit: BoxFit.cover,
              width: double.infinity,
              height: 300,
            ),
            Container(
              child: Text(
                this.dog.name,
                style: Theme.of(context).textTheme.headline6,
              ),
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
        ),
      ),
    );
  }
}
