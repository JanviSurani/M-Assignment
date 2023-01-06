class User {
  int? id;
  String name;
  String email;
  String contact;
  int age;

  User(
      {required this.name,
        required this.email,
        required this.contact,
        required this.age});

  User.withId(
      {required this.id,
        required this.name,
        required this.email,
        required this.contact,
        required this.age});

  Map<String, dynamic> toMap() {
    return {
      "name": name,
      "email": email,
      "contact": contact,
      "age": age,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User.withId(
      id: map["id"],
      name: map["name"],
      email: map["email"],
      contact: map["contact"],
      age: map["age"],
    );
  }
//

// Map<String,dynamic> toMap(){
//   return{
//     'id':id,
//     'name':name,
//     'email':email,
//     'contact':contact,
//     'age':age
//
//   };
// }

}