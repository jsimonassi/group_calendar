import 'package:calendar/models/ApplicationUser.dart';
import 'package:firebase_auth/firebase_auth.dart';


class Api {

  static Future<void> createUser(ApplicationUser newUser) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: newUser.email,
          password: newUser.password
      );
      print("Olha o response: " + userCredential.toString());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

}