import 'package:flutter/material.dart';
import 'package:learn_project_001/models/expence.dart';

class ExpenceTile extends StatelessWidget {
  const ExpenceTile({super.key, required this.expence});

  final ExpenceModel expence;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(expence.title, style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 8),
            Row(
              children: [
                Text(expence.amount.toStringAsFixed(2)),
                const Spacer(),
                Row(
                  children: [
                    Icon(ExpenceCategoryIcons[expence.category]),
                    const SizedBox(width: 10),
                    Text(expence.getFormattedDate),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
