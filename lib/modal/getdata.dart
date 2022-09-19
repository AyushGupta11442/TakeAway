class data {
  Map? objects;
  Map? objects1;
  data({this.objects, this.objects1});
  // receiving data from server
  factory data.fromMap(map) {
    return data(
      objects: map['object.1'],
      objects1: map['object.2'],
    );
  }
}
