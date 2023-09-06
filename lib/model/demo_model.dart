class ToDoModelAddList {
  int? id;
  String? email;
  String? firstName;
  String? lastName;
  String? avatar;

  ToDoModelAddList({
    this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.avatar,
  });

  ToDoModelAddList.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    email = json["email"];
    firstName = json["firstName"];
    lastName = json["lastName"];
    avatar = json["avatar"];
  }
}
