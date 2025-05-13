import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';
class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});
  final List<CategoryModel> categories = const
  [
    CategoryModel(name: 'Sport',      image: 'https://images.pexels.com/photos/209977/pexels-photo-209977.jpeg'),
    CategoryModel(name: 'Business',   image: 'https://images.pexels.com/photos/109371/pexels-photo-109371.jpeg'),
    CategoryModel(name: 'health',     image: 'https://images.pexels.com/photos/40568/medical-appointment-doctor-healthcare-40568.jpeg'),
    CategoryModel(name: 'Science',    image: 'https://images.pexels.com/photos/9243553/pexels-photo-9243553.jpeg'),
    CategoryModel(name: 'Technology', image: 'https://images.pexels.com/photos/2599244/pexels-photo-2599244.jpeg'),
    CategoryModel(name: 'General', image: 'https://images.pexels.com/photos/623843/pexels-photo-623843.jpeg'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 150,
        child: ListView.builder
        (
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context , index)
          {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: CategoryCard
              (
                category: categories[index]
              ),
            );
            
          },
          
          
        ),
      );
  }
}