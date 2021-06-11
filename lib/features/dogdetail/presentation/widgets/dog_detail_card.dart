import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/features/dogdetail/domain/entities/dog.dart';

class DogDetailCard extends StatelessWidget {
  final Dog dog;
  const DogDetailCard(this.dog, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(dog.id),
    );
  }
}
