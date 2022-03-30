import 'package:bol110pol/views/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController otpController = TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance;

  bool otpVisibility = false;

  String verificationID = "";

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "BOL 110",
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        backgroundColor: Colors.green[900],
      ),

      body:Container(
        decoration: const BoxDecoration(
          image:  DecorationImage(
            image: AssetImage("assets/110.png"),
            ), 
          ),
        margin: const EdgeInsets.all(160),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextField(
              controller: phoneController,
              decoration: const InputDecoration(
                hintText: 'Ingresar numero de celular',
              ),
              maxLength: 10,
              keyboardType: TextInputType.phone,
            ),
           

            Visibility(
              child: TextField(
                controller: otpController,
                decoration: const InputDecoration(
                  hintText: 'Codigo Recibido',
                  prefix: Padding(
                    padding: EdgeInsets.all(4),
                    child: Text(''),
                  ),
                ),
                maxLength: 6,
                keyboardType: TextInputType.number,
              ),
              visible: otpVisibility,
            ),
            const SizedBox(
              height: 10,
            ),
            MaterialButton(
              color: const Color.fromARGB(255, 9, 53, 12),
              onPressed: () {
                if (otpVisibility) {
                  verificarCodigo();
                } else {
                  accederConTelefono();
                }
              },
              child: Text(
                otpVisibility ? "Verificar Codigo" : "Autenticar",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            
          ],
          
        ),
        
      ),
      
    );
  }
  void accederConTelefono() async {
    auth.verifyPhoneNumber(
      phoneNumber: "+591" + phoneController.text,
      verificationCompleted: (PhoneAuthCredential credential) async {
        await auth.signInWithCredential(credential).then((value) {
          print("Logeado con exito");
        });
      },
      verificationFailed: (FirebaseAuthException e) {
        print(e.message);
      },
      codeSent: (String verificationId, int? resendToken) {
        otpVisibility = true;
        verificationID = verificationId;
        setState(() {});
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  void verificarCodigo() async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationID, smsCode: otpController.text);

    await auth.signInWithCredential(credential).then(
      (value) {
        print("Acceso concedido");
        Fluttertoast.showToast(
          msg: "Registraste tu telefono con exito",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0,
        );
      },
    ).whenComplete(
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Home(),
          ),
        );
      },
    );
  }
}

