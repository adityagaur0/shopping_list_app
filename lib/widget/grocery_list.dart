import 'package:flutter/material.dart';
import 'package:shopping_list/data/dummy_items.dart';
import 'package:shopping_list/widget/new_item.dart';

class GroceryList extends StatefulWidget {
  const GroceryList({super.key});

  @override
  State<GroceryList> createState() => _GroceryListState();
}

class _GroceryListState extends State<GroceryList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: const Text(
          "Your GroceryList",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {
              voidAdd();
            },
            icon: const Icon(Icons.add),
          ),
        ],

        // backgroundColor: Colors.transparent,
      ),
      body: ListView.builder(
          itemCount: groceryItems.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(groceryItems[index].name),
              leading: Container(
                height: 24,
                width: 24,
                color: groceryItems[index].category.color,
              ),
              trailing: Text(groceryItems[index].quantity.toString()),
            );
          }),
    );
  }

  void voidAdd() {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (ctx) => const NewItem(),
    ));
  }
}
