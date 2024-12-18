class ArticalModel {
  final String? title;
  final String? time;
  final String? imagePath;

  ArticalModel(
      {required this.title, required this.time, required this.imagePath});
  factory ArticalModel.fromJson(json) => ArticalModel(
        title: json["title"],
        time: json["publishedAt"],
        imagePath: json["urlToImage"],
      );
}
