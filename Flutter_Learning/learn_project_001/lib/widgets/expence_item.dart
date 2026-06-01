import 'package:flutter/material.dart';
import 'package:learn_project_001/models/expence.dart';
import 'package:learn_project_001/widgets/expence_tile.dart';

class ExpenceListItems extends StatelessWidget {
  const ExpenceListItems({super.key, required this.list});

  final List<ExpenceModel> list;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        return ExpenceTile(expence: list[index]);
      },
    );
  }
}
