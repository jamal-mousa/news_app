import 'package:flutter/material.dart';
import 'package:news_app/widgets/category_card.dart';
import 'package:news_app/widgets/category_list_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      appBar: AppBar
      (
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: 
          [
            Text
            (
              'News' , 
              style: TextStyle
              (
                color: Colors.black,
                fontSize: 20,
              ),
              ),
              Text
            (
              'Cloud' , 
              style: TextStyle
              (
                color: Colors.orange,
                fontSize: 20,
              ),
              ),
          ],
        ),
        
        
      ),
      body: CategoryListView()
    );
  }
}