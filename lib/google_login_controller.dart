import 'package:google_sign_in/google_sign_in.dart';
class GoogleSignInController with ChangeNotifier {
  var _googleSignIn = GoogleSignIn();
  GoogleSignAccount? googleAccount;

  login() async{
    this.googleAccount = await _googleSignIn.signIn();
    notifyListeners();
  }
  logOut() async{
    this.googleAccount = await _googleSignIn.signOut();
    notifyListeners();
  }
}