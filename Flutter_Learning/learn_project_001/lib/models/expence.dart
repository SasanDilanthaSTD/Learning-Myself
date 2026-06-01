import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

// define unique id
final uuid = const Uuid().v4();

// define date formatter
final formatedDate = DateFormat.yMd();

// define category ENUM
enum Category { food, traval, leasure, work }

// set icons for each categories
final ExpenceCategoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.traval: Icons.travel_explore,
  Category.leasure: Icons.leak_add_sharp,
  Category.work: Icons.work,
};

class ExpenceModel {
  ExpenceModel({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid;

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  // get > date formateer
  String get getFormattedDate {
    return formatedDate.format(date);
  }
}
