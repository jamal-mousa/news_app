import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key , required this.category});
  final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      body: CustomScrollView
      (
        slivers: [NewsListViewBuilder
        (
          ctegory: category,
        ),
        ],
      ),
    );
  }
}

// return ctegory: category.categoryName