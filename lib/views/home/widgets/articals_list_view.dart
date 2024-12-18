import 'package:flutter/material.dart';

import '../models/artical_model.dart';
import 'artical_item.dart';

class ArticalListView extends StatelessWidget {
  const ArticalListView({
    super.key,
    required this.articalModel,
  });

  final List<ArticalModel> articalModel;

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemBuilder: (context, int index) =>
          ArticalItem(articalModel: articalModel[index]),
      separatorBuilder: (BuildContext context, int index) => const Divider(
        color: Colors.grey,
        thickness: 1,
      ),
      itemCount: articalModel.length,
    );
    // child: ListView.separated(
    //   itemBuilder: (BuildContext context, int index) =>
    //       ArticalItem(articalModel: articalModel),
    //   separatorBuilder: (BuildContext context, int index) => const Divider(
    //     color: Colors.grey,
    //     thickness: 1,
    //   ),
    //   itemCount: 5,
    // ),
  }
}
