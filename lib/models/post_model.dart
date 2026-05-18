// Model
class PostModel {
  int id;
  String title;
  String body;

  // constructor
  PostModel({
    required this.id,
    required this.title,
    required this.body,
  });

  // factory method
  factory PostModel.formJson(Map<String, dynamic> json){
    return PostModel(
      // mengambil data
      id: json['id'],
      title: json['title'],
      body: json['body']
    );
  }
}