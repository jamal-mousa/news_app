import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsService 
{
  final Dio dio = Dio();
  NewsService();

 Future<List<ArticleModel>> getNews() async
 {
   try 
   {
    Response response = await dio.get('https://newsapi.org/v2/top-headlines?apiKey=7d1a401a6cc74ea3806e51149c94bd0e&category=general');
    Map<String , dynamic> jsonData =response.data;
    List <dynamic> articles = jsonData['articles'];
    
    List<ArticleModel> articleList = [];
    
    for(var article in articles)
    {
    ArticleModel articleModel =ArticleModel
    (
      image: article['urlToImage'], 
      title: article['title'], 
      subTitle: article['description']
    );
    articleList.add(articleModel);
    }
    return articleList;
   }
    catch (e) 
    {
      return [];
    }
 }
}