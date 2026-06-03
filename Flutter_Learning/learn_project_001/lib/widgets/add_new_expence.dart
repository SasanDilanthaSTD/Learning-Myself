import 'package:flutter/material.dart';
import 'package:learn_project_001/models/expence.dart';

class AddNewExpence extends StatefulWidget {
  const AddNewExpence({super.key});

  @override
  State<AddNewExpence> createState() => _AddNewExpenceState();
}

class _AddNewExpenceState extends State<AddNewExpence> {
  // define the controlers
  final _titleControler = TextEditingController();
  final _amountControler = TextEditingController();

  Category _selectedCategory = Category.food;

  @override
  void dispose() {
    super.dispose();

    _titleControler.dispose();
    _amountControler.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber.shade50,
      child: Column(
        children: [
          TextField(
            controller: _titleControler,
            decoration: InputDecoration(
              hintText: "Input Title here..",
              label: Title(color: Colors.black, child: const Text("Title")),
            ),
            keyboardType: TextInputType.text,
            maxLength: 50,
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _amountControler,
                  decoration: InputDecoration(
                    hintText: "Input Amount here..",
                    label: Title(color: Colors.black, child: Text("Amount")),
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Text("06/05/2026"),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.calendar_month),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              DropdownButton(
                value: _selectedCategory,
                items: Category.values
                    .map(
                      (cateory) => DropdownMenuItem(
                        value: cateory,
                        child: Text(cateory.name),
                      ),
                    )
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedCategory = value!;
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
