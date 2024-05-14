class TodoModel {
  int? id;
  String title, dis;
  bool?  fav;
  Status? status;

  TodoModel({
    required this.id,
    required this.title,
    required this.dis,
    this.status  =  Status.active,
    this.fav =  false,
  });
}

enum Status{
  pending,
  active,
  complete
}