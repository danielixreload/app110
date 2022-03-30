import 'package:flutter/material.dart';
class panico extends StatefulWidget {
  const panico({Key? key}) : super(key: key);

  @override
  State<panico> createState() => _panicoState();
}

class _panicoState extends State<panico> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Container(
          child: Column(
            children: <Widget>[
              
              SizedBox(height: 250,),
              FloatingActionButton.large(  
                backgroundColor: Colors.red,
                 onPressed: (){},
                child: Icon(Icons.medical_services),
               
              
              ),
              SizedBox(height: 150,),
              FloatingActionButton.large(
                 backgroundColor: Colors.green,
              onPressed: (){},
        
                child: Icon(Icons.local_police),
              
              ),
              SizedBox(height: 180,),
        Text('Advertencia!!', style: TextStyle(fontSize: 30, color: Color(0xffff0000),
        
      ),),
         Text('   Los BOTONES de PÁNICO deben usarse en extremos caso de requerimiento Médico o Policial, recuerde toda "Denuncia Falsa" es penada conforme a ley, usa esta aplicación con responsabilidad, la seguridad depende de todos.', style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 14, 13, 13),
        
      ),),
              ],
          ),
        ),
         ),
      
      
    );
   
  }
}