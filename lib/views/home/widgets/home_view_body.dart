import 'package:flutter/material.dart';
import 'package:news_app_2/views/home/widgets/articals_list_view_builder.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.0),
      child: CustomScrollView(
        slivers: [ArticalsListViewBuilder()],
      ),
    );
  }
}
