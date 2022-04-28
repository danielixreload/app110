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
      
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            child: Column(
              children: <Widget>[
                SizedBox(
                    
                    child: Image.asset("assets/110.png"),
                  ),
                
                SizedBox(height: 30,),
                 Text('BOTONES DE PÁNICO.', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), textAlign: TextAlign.justify,),
            SizedBox(height: 60,),
                FloatingActionButton.large(  
                  backgroundColor: Colors.red,
                   onPressed: (){},
                  child: Icon(Icons.medical_services),
                 
                
                ),
                SizedBox(height: 20,),
                Text('Ambulancia', style: TextStyle(fontSize: 20, color: Color(0xffff0000), fontWeight: FontWeight.bold), textAlign: TextAlign.justify,),
                
                SizedBox(height: 110,),
                FloatingActionButton.large(
                   backgroundColor: Colors.green,
                onPressed: (){},
          
                  child: Icon(Icons.local_police),
                
                ),
                 SizedBox(height: 20,),
                Text('Patrulla', style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 6, 134, 23), fontWeight: FontWeight.bold), textAlign: TextAlign.justify,),
                
                SizedBox(height: 140,),
             Text('Advertencia!!', style: TextStyle(fontSize: 30, color: Color(0xffff0000),
          
        ),),
           Text('   Los BOTONES de PÁNICO deben usarse en extremos caso de requerimiento Médico o Policial, recuerde toda "Denuncia Falsa" es penada conforme a ley, usa esta aplicación con responsabilidad, la seguridad depende de todos.', style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 14, 13, 13),
          
        ),
        ),
                ],
            ),
          ),
           ),
      ),
      
      
    );
   
  }
}