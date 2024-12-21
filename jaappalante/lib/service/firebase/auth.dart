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
  Future<User?> registerWithEmailAndPassword(
      String email, String password, String firstName, String lastName) async {
    try {
      // Création de l'utilisateur avec email et mot de passe
      UserCredential result = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Obtenir l'utilisateur créé
      User? user = result.user;

      // Ajouter le nom complet à l'utilisateur
      if (user != null) {
        await user.updateDisplayName('$firstName $lastName');
        await user.reload(); // Recharger pour refléter les changements
        user = _firebaseAuth.currentUser; // Mettre à jour l'instance utilisateur
      }

      return user; // Retourne l'utilisateur si tout est réussi
    } catch (e) {
      print('Erreur lors de l\'inscription : $e');
      return null; // Retourne null en cas d'erreur
    }
  }
}