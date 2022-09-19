class Theuser {
  final String uid;
  Theuser({required this.uid});
}

class UserModel {
  String? name;
  String? email;
  String? mobileno;
  String? address;

  UserModel({this.name, this.email, this.mobileno, this.address});

  // receiving data from server
  factory UserModel.fromMap(map) {
    return UserModel(
      name: map['name'],
      email: map['email'],
      mobileno: map['mobileno'],
      address: map['address'],
    );
  }

  // sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'mobileno': mobileno,
      'address': address,
    };
  }
}
