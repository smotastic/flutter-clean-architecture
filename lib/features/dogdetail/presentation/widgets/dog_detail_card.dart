import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/features/dogdetail/domain/entities/dog.dart';

class DogDetailCard extends StatelessWidget {
  final Dog dog;
  const DogDetailCard(this.dog, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: ListView(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.network(
              dog.url,
              fit: BoxFit.cover,
              width: double.infinity,
              height: 300,
            ),
          ),
          ListTile(
            title: Text(dog.breed?.name ?? 'No Name'),
            subtitle: Text('Name'),
            leading: CircleAvatar(
              backgroundColor: Colors.green,
            ),
          ),
          ListTile(
            title: Text(dog.breed?.bredFor ?? 'Nothing'),
            subtitle: Text('Bred for'),
            leading: CircleAvatar(
              backgroundColor: Colors.red,
            ),
          ),
          ListTile(
            title: Text(dog.breed?.breedGroup ?? 'No Breeding Group'),
            subtitle: Text('Breeding Group'),
            leading: CircleAvatar(
              backgroundColor: Colors.amber,
            ),
          ),
          ListTile(
            title: Text(dog.breed?.lifeSpan ?? 'No Information'),
            subtitle: Text('Life Span'),
            leading: CircleAvatar(
              backgroundColor: Colors.black,
            ),
          ),
          ListTile(
            title: Text(dog.breed?.temperament ?? 'No Information'),
            subtitle: Text('Temperament'),
            leading: CircleAvatar(
              backgroundColor: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
