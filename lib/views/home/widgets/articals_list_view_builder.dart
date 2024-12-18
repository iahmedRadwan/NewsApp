import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_2/views/home/models/artical_model.dart';
import 'package:news_app_2/views/home/services/artical_service.dart';
import 'package:news_app_2/views/home/widgets/articals_list_view.dart';

class ArticalsListViewBuilder extends StatefulWidget {
  const ArticalsListViewBuilder({super.key});

  @override
  State<ArticalsListViewBuilder> createState() =>
      _ArticalsListViewBuilderState();
}

class _ArticalsListViewBuilderState extends State<ArticalsListViewBuilder> {
  var future;
  @override
  void initState() {
    // TODO: implement initState
    future = ArticalService(dio: Dio()).getArticals();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticalModel>>(
        future: future,
        builder: (context, snapShot) {
          if (snapShot.hasData) {
            return ArticalListView(articalModel: snapShot.data!);
          } else if (snapShot.hasError) {
            return const SliverFillRemaining(
              hasScrollBody: false,
              child: Center(child: Text("Error When Get Data")),
            );
          } else if (snapShot.data == []) {
            return const SliverFillRemaining(
              hasScrollBody: false,
              child: Center(child: Text("No Data Founded")),
            );
          } else {
            return const SliverFillRemaining(
              hasScrollBody: false,
              child: Center(child: CircularProgressIndicator()),
            );
          }
        });
  }
}
