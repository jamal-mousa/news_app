import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key});

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {

  List<ArticleModel> articles = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    getGeneralNews();
  }
  
  Future<void> getGeneralNews() async
  {
    articles = await NewsService().getNews();
    isLoading = false;
    setState(() {
      
    });
  }
  @override
  Widget build(BuildContext context) {
    return isLoading?SliverToBoxAdapter(child: SizedBox
    (
      height: MediaQuery.of(context).size.height,
      child: Center(child: CircularProgressIndicator())))
    :articles.isNotEmpty? NewsListView(articles: articles)
    :SliverToBoxAdapter(child: Text('oops , there was an error , try later'),);
  }
}