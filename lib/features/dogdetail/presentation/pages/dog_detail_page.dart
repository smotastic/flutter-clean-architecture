import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/features/dogdetail/presentation/widgets/dog_detail_card.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_clean_architecture/features/dogdetail/presentation/bloc/detail_dog_bloc.dart';

class DogDetailPage extends StatelessWidget {
  static const routeName = 'dog-detail';

  const DogDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final doggoId = ModalRoute.of(context)!.settings.arguments as String;
    return BlocProvider(
      create: (_) => GetIt.I<DetailDogBloc>()..add(DogRequestedEvent(doggoId)),
      child: DogDetailView(doggoId: doggoId),
    );
  }
}

class DogDetailView extends StatelessWidget {
  const DogDetailView({
    Key? key,
    required this.doggoId,
  }) : super(key: key);

  final String doggoId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(doggoId),
        ),
        body: BlocBuilder<DetailDogBloc, DetailDogState>(
            builder: (context, state) {
          if (state is DetailDogLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is DetailDogSuccess) {
            return DogDetailCard(state.dog);
          }
          return Text("Nothing");
        }));
  }
}
