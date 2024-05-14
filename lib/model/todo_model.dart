class TodoModel {
  final int? id;
  final String title, dis;
  final bool  fav;
  final Status status;

  const TodoModel({
    this.id,
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