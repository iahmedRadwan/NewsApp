import 'package:dio/dio.dart';
import 'package:news_app_2/views/home/models/artical_model.dart';

class ArticalService {
  final Dio dio;

  ArticalService({required this.dio});

  Future<List<ArticalModel>> getArticals() async {
    try {
      List<ArticalModel> articals = [];
      Response response = await dio.get(
          "https://newsapi.org/v2/top-headlines?country=us&apiKey=875cd0662b2649b09bc029cb36806217");
      Map<String, dynamic> jsonData = response.data;
      for (var artical in jsonData["articles"]) {
        if (artical["title"] != null &&
            artical["publishedAt"] != null &&
            artical["title"] != "[Removed]") {
          ArticalModel articalModel = ArticalModel.fromJson(artical);
          articals.add(articalModel);
        }
      }
      return articals;
    } catch (e) {
      // TODO
      print(e);
      return [];
    }
  }
}
