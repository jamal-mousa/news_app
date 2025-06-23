import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/news_tile.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({super.key});

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {

  List<ArticleModel> articles = [];

  @override
  void initState() {
    super.initState();
    getGeneralNews();
  }
  
  Future<void> getGeneralNews() async
  {
    articles = await NewsService().getNews();
    setState(() {
      
    });
  }

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