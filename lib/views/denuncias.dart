
import 'package:flutter/material.dart';
class denuncias extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      
      child: Form(child: Column(children: <Widget>[
      
        TextFormField(
          decoration: InputDecoration(
            labelText: "Tipo de Denuncia",
            border: OutlineInputBorder()
          ),
        ),
        SizedBox(height: 15,),
        TextFormField(
          decoration: InputDecoration(
            labelText: "Eres Victima o Testigo",
            border: OutlineInputBorder()
          ),
        ),
           SizedBox(height: 650,),
        Text('Advertencia!!', style: TextStyle(fontSize: 30, color: Color(0xffff0000),
        
      ),),
      Text('Toda "Denuncia Falsa" es penada conforme a ley, usa esta aplicación con responsabilidad, la seguridad depende de todos.', style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 14, 13, 13),
        
      ),),
      ],),),
    );
  }
}
