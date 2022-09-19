import 'package:cloud_firestore/cloud_firestore.dart';

class databaseservice {
  final String? uid;
  databaseservice({required this.uid});
  //firestore refrence
  final CollectionReference accountcollection =
      FirebaseFirestore.instance.collection('accountdata');

  // to create data

  Future updateuserdata(
      String name, String email, String mobileno, String address) async {
    return await accountcollection.doc(uid).set({
      'name': name,
      'email': email,
      'mobileno': mobileno,
      'address': address,
    });
  }

  // update user name
  Future updateusername(String name) async {
    return await accountcollection.doc(uid).set({
      'name': name,
    });
  }

  // update user mobile
  Future updateusermobile(String mobile) async {
    return await accountcollection.doc(uid).set({
      'mobileno': mobile,
    });
  }

  // update user address
  Future updateuseraddress(String address) async {
    return await accountcollection.doc(uid).set({
      'address': address,
    });
  }

  // stream which notify change in document in firestore
  Stream<QuerySnapshot> get datas {
    return accountcollection.snapshots();
  }
}
