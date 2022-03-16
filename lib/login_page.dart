
import 'package:bol110pol/google_login_controller.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registro"),
        backgroundColor: Colors.green,
      ),
      body: ,
    );
  }
  loginUI() {
    return Consumer<GoogleSignInController>(
      builder: (context, model, child){
        if(model.googleAccount != null) {
          return Center(
            child: loggedInUI(model),
            );
        }
        else{
          return loginControls(context);
        }
      },
    );
  }

  loggedInUI(GoogleSignInController model) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(backgroundImage: Image.network(model.googleAccount!.photoUrl ?? '').image,
        radius: 50,
        ),
        Text(model.googleAccount!.displayName ?? ''),
        Text(model.googleAccount!.email),
        ActionChip(
          avatar: Icon(Icons.logout),
          label: Text("Logout"),
          onPressed: () {
            Provider.of<GoogleSignInController>(context, listen: false).logout();
          },
        )
      ],
    );
  }
  loginControls(BuildContext context){
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            child: Image.asset("assets/images/google.png", width: 250,
            ),

            onTap: (){
              Provider.of<GoogleSignInController>(context, listen: false).login();
            }
           
          ),
          
          Image.asset("assets/images/fb.png", width: 250,
          )
        ],
        ),
        );

  }
}


