// Categories.vegetables: Category(
//   'Vegetables',
//   Color.fromARGB(255, 0, 255, 128),
// ),

import 'package:flutter/material.dart';

enum Categories {
  vegetables,
  fruit,
  meat,
  dairy,
  carbs,
  sweets,
  spices,
  convenience,
  hygiene,
  other
}

class Category {
  Category(
    this.title,
    this.color,
  );
  final String title;
  final Color color;
}
