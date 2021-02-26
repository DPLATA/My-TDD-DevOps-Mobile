import 'package:firebase_auth/firebase_auth.dart';
import 'package:my_tdd_devops_mobile/models/custom_user.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // create user object based on FirebaseUser
  CustomUser _userFromFirebaseUser(User user) {
    return user != null ? CustomUser(uid: user.uid) : null;
  }

  // auth change user stream
  /*Stream<CustomUser> get user {
    return _auth.onAuthStateChanged
        //.map((FirebaseUser user) => _userFromFirebaseUSer(user));
        .map(_userFromFirebaseUser);
  }*/
}
