import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/news_list_view.dart';

class NewsListViewBulider extends StatefulWidget {
  const NewsListViewBulider({super.key, required this.category});
  final String category;
  @override
  State<NewsListViewBulider> createState() => _NewsListViewBuliderState();
}

class _NewsListViewBuliderState extends State<NewsListViewBulider> {
  var future;
  @override
  void initState() {
    super.initState();
    future = NewsService(Dio()).getTopHeadLines(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListView(
              articles: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return const SliverFillRemaining(
              child: Center(
                child: Text('oops there was an error , try again'),
              ),
            );
          } else {
            return const SliverFillRemaining(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });
  }
}

// class ErrorMessage extends StatelessWidget {
//   const ErrorMessage({
//     super.key,
//     required this.message,
//   });
//   final String message;
//   @override
//   Widget build(BuildContext context) {
//     return Text('oops there was an error , try again');
//   }
// }
