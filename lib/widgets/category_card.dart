import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/views/category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});
  final CategoryModel category ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () 
      {
        Navigator.of(context).push(MaterialPageRoute
        (
          builder: (context)
          {
            return CategoryView
            (
              category: category.name,
            );
          }
        ),);
      },
      child: Container
        (
          height: 150,
          width: 200,
          decoration: BoxDecoration
          (
            image: DecorationImage
            (
              image: NetworkImage(category.image),
              fit: BoxFit.fill
            ),
            borderRadius: BorderRadius.circular(16),
            color: Colors.blue,
          ),
          child: Center(child: Text(category.name , 
          style: TextStyle
          (
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 28
          ),
          ),
          ),
        ),
    );
  }
}