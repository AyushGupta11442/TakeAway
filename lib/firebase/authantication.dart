import 'package:TakeAway/firebase/database.dart';
import 'package:TakeAway/modal/user.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Authservice {
  String? uid;
  //created firebase auth instance
  final FirebaseAuth __auth = FirebaseAuth.instance;

  // create user obj based on firebase to take only only firebase user
  Theuser? __userfromfirebase(User? users) {
    return users != null ? Theuser(uid: users.uid) : null;
  }

  // auth change use stream
  Stream<Theuser?> get Streamuser {
    return __auth.authStateChanges().map(__userfromfirebase);
  }

  // register with email and password
  Future registerwithemailandpassword(String email, String password) async {
    try {
      UserCredential result = await __auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;
      // create new document for the user with the uid
      await databaseservice(uid: user!.uid).updateuserdata(
          'Enter user data', email, 'enter mobile no', 'enter the email');
      uid = user.uid;
      return __userfromfirebase(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
  //sign in anonamysly with firebaseauth object

  Future SignInAnon() async {
    try {
      UserCredential result = await __auth.signInAnonymously();
      User? user = result.user;
      return __userfromfirebase(user);
      // it try to sigin anonymously and store result in result
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // sign in with email and password
  Future signinwithemailandpassword(String email, String password) async {
    try {
      UserCredential result = await __auth.signInWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;
      return __userfromfirebase(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

// signout
  Future signout() async {
    try {
      await __auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // get uid
  String? currentuid() {
    return uid;
  }
}
