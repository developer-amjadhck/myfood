import 'package:flutter/material.dart';
import 'package:my_food/dummy_data.dart';
import 'package:my_food/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Food"),
      ),
      body: GridView(
        padding: const EdgeInsets.all(25),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: DUMMY_CATEGORIES
            .map((catData) => CategoryItem(
                  catData.id,
                  catData.title,
                  catData.color,
                ))
            .toList(),
      ),
    );
  }
}
