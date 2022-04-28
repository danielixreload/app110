import 'package:bol110pol/views/home.dart';
import 'package:flutter/material.dart';

class terminos_y_condiciones extends StatelessWidget {
  const terminos_y_condiciones({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Terminos Y Condiciones",
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        backgroundColor: Colors.green[900],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(45),
          child: Column(
          
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              
              Text('Términos y Condiciones', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),),
              SizedBox(height: 30,),
               SizedBox(
                      
                      child: Image.asset("assets/splash.png"),
                    ),
              
              Text('La Policía Boliviana como institución del pueblo y para el pueblo, cumple una función de carácter público, esencialmente preventiva y de auxilio, que en forma regular y continua garantiza el normal desenvolvimiento de las actividades sociales. Está asimismo encargada de la investigación de los delitos y de la sanción de faltas, infracciones y contravenciones en materia policial.', style: TextStyle(fontSize: 20), textAlign: TextAlign.justify,),
            
              SizedBox(height: 15,),
               Text('Estos Términos y Condiciones de Servicio rigen el uso y acceso a la aplicación, y cualquier información capturada por la misma. Las personas deben aceptar estos términos de uso, los cuales tienen un carácter obligatorio y vinculante, si usted no acepta los términos y condiciones deberá abstenerse de utilizar la aplicación.', style: TextStyle(fontSize: 20), textAlign: TextAlign.justify,),
             SizedBox(height: 15,),
              Text('El Usuario se obliga a usar la aplicación y los contenidos encontrados en ella de una manera diligente, correcta, lícita y en especial, se compromete a NO realizar las conductas descritas a continuación: ', style: TextStyle(fontSize: 20), textAlign: TextAlign.justify,),
             SizedBox(height: 15,),
              Text('(a) No utilizar esta aplicación con fines contrarios a la ley, a la moral y al orden público.', style: TextStyle(fontSize: 18), textAlign: TextAlign.justify,),
             SizedBox(height: 10,),
             Text('(b) No permitir que terceros ajenos a usted usen la aplicación móvil desde su dispositivo.', style: TextStyle(fontSize: 18), textAlign: TextAlign.justify,),
               SizedBox(height: 40,),  
                      
               Text('La seguridad depende de todos.', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), textAlign: TextAlign.justify,),
            SizedBox(height: 60,),
              RaisedButton(
                color: const Color.fromARGB(255, 9, 53, 12),
                child: Text("Aceptar terminos y condiciones", style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        
                      ),),
                
                onPressed: ()=>{
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context)=>Home())
                  ),
                },
              )
              
              
            ],
            
          ),
          
        ),
      ),
    );
  }
}