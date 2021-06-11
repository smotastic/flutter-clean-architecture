import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/features/dogcarousel/domain/entities/dog_entry.dart';
import 'package:flutter_clean_architecture/features/dogcarousel/presentation/bloc/random_dog_bloc.dart';
import 'package:flutter_clean_architecture/features/dogdetail/presentation/pages/dog_detail_page.dart';

class DogCarouselCard extends StatelessWidget {
  final DogEntry dog;

  const DogCarouselCard(
    this.dog, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .pushNamed(DogDetailPage.routeName, arguments: this.dog.name);
            },
            child: Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.network(
                  dog.url,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 300,
                ),
              ),
            ),
          ),
          Container(
            child: Text(
              this.dog.name,
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
        ],
      ),
    );
  }
}
