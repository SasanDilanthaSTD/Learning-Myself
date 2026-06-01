import 'package:flutter/material.dart';
import 'package:learn_project_001/models/expence.dart';

class ExpenceListItems extends StatelessWidget {
  const ExpenceListItems({super.key, required this.list});

  final List<ExpenceModel> list;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        return Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  list[index].title,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Text(list[index].amount.toStringAsFixed(2)),
                    const Spacer(),
                    Row(
                      children: [
                        const Icon(Icons.trending_down),
                        const SizedBox(width: 10),
                        Text(list[index].date.toString()),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
