import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  User? get currentUser => _firebaseAuth.currentUser;

  Stream<User?> get authStatechanges => _firebaseAuth.authStateChanges();

  //Login with emaile 
  Future<void> loginwithEmailAndPassword(String email , String password) async {
    await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password) ;
  }    

  //LOGOUT  
  Future<void> logout() async{
    await _firebaseAuth.signOut();
  }    
  
  //Create USER WITH EMAIL-PASSWORD
  Future<void> createUserWithEmailAndPassword(String email , String password) async{
    await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password) ;
  }
}
