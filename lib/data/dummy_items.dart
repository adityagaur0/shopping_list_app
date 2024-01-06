


import 'package:shopping_list/data/categories.dart';
import 'package:shopping_list/modal/category_modal.dart';
import 'package:shopping_list/modal/grocery_item_modal.dart';

final groceryItems = [
  GroceryItems(
      id: 'a',
      name: 'Milk',
      quantity: 1,
      category: categories[Categories.dairy]!),
  GroceryItems(
      id: 'b',
      name: 'Bananas',
      quantity: 5,
      category: categories[Categories.fruit]!),
  GroceryItems(
      id: 'c',
      name: 'Beef Steak',
      quantity: 1,
      category: categories[Categories.meat]!),
];
