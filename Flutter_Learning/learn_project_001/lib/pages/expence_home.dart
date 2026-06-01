import 'package:flutter/material.dart';
import 'package:learn_project_001/models/expence.dart';

class ExpenceHomeScreen extends StatefulWidget {
  const ExpenceHomeScreen({super.key});

  @override
  State<ExpenceHomeScreen> createState() => _ExpenceHomeScreenState();
}

class _ExpenceHomeScreenState extends State<ExpenceHomeScreen> {
  List<ExpenceModel> _expence_list = [
    ExpenceModel(
      title: "bag",
      amount: 250.90,
      date: DateTime.now(),
      category: Category.leasure,
    ),
    ExpenceModel(
      title: "breacfirst",
      amount: 50,
      date: DateTime.now(),
      category: Category.food,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Expence Learn",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 0, 65, 138),
        elevation: 0,
        actions: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                color: Colors.amberAccent,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.add, color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: _expence_list.length,
        itemBuilder: (context, index) {
          return Text(_expence_list[index].title);
        },
      ),
    );
  }
}
