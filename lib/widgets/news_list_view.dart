import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
// import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/news_tile.dart';



// ignore: must_be_immutable
class NewsListView extends StatelessWidget {

  const NewsListView({super.key, required this.articles});

  final List<ArticleModel> articles;



  @override
  Widget build(BuildContext context) {
    return SliverList
    (
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context,index)
            {
              return Padding
              (
                padding: const EdgeInsets.only(bottom: 22),
                child: NewsTile(
                  articleModel: articles[index],
                ),
              );
            }
            )
    );
  }
}


// class NewsListView extends StatelessWidget {
//   const NewsListView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SliverList
//     (
//       delegate: SliverChildBuilderDelegate((context,index)
//             {
//               return Padding
//               (
//                 padding: const EdgeInsets.only(bottom: 22),
//                 child: NewsTile(),
//               );
//             }
//             )
//     );
//   }
// }