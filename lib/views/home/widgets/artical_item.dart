import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app_2/views/home/models/artical_model.dart';

class ArticalItem extends StatelessWidget {
  const ArticalItem({super.key, required this.articalModel});
  final ArticalModel articalModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Align(
            alignment: Alignment.center,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              // child: Image.network(
              //   articalModel.imagePath ?? "https://i.sstatic.net/y9DpT.jpg",
              //   fit: BoxFit.cover,
              // ),
              child: Center(
                child: CachedNetworkImage(
                  imageUrl: articalModel.imagePath ??
                      "https://i.sstatic.net/y9DpT.jpg",
                  placeholder: (context, url) => const SizedBox(
                      width: 100,
                      height: 100,
                      child: Center(child: CircularProgressIndicator())),
                  errorWidget: (context, url, error) => const SizedBox(
                      width: 100,
                      height: 100,
                      child: Center(child: Icon(Icons.error))),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: SizedBox(
            height: 120,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: Text(
                    articalModel.title!,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w600),
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(
                  articalModel.time!,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
