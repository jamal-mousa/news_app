import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

// package
// cashed network image

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});
  final ArticleModel articleModel;


  @override
  Widget build(BuildContext context) {
    return Column
    (
      mainAxisSize: MainAxisSize.min,
      children: 
      [
        ClipRRect
        (
          borderRadius: BorderRadius.circular(6),
          child: Image.network
          (articleModel.image?? 'https://images.pexels.com/photos/281260/pexels-photo-281260.jpeg',
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox
        (
          height: 15,
        ),
        Text(
          articleModel.title!,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: Colors.black, fontSize: 20,),
        
        ),
        SizedBox
        (
          height: 15,
        ),
        Text(
          articleModel.subTitle?? '',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: Colors.grey, fontSize: 14,),
        
        ),

      ],
    );
  }
}