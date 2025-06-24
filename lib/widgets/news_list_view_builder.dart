import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {


  final String ctegory;
  const NewsListViewBuilder({super.key , required this.ctegory});


  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  // ignore: prefer_typing_uninitialized_variables
  var future ; 

  @override
  void initState() {
    future = NewsService().getNews(category: widget.ctegory);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>
    (
      future: future, 
      builder: (context , snapshot)
      {
        if(snapshot.hasData)
        {
          return NewsListView
        (
          articles: snapshot.data ?? [],
        );
        }
        else if(snapshot.hasError)
        {
          return SliverToBoxAdapter(child: Text('oops , there was an error , try later'),);

        }
        else
        {
          return SliverToBoxAdapter
          (
            child: SizedBox
          (
            height: MediaQuery.of(context).size.height,
            child: Center(child: CircularProgressIndicator())));
        }
      }
    ) ;
}
}