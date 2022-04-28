
import 'dart:io';



import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

import 'package:open_file/open_file.dart';
class ModalNuevaDenuncia extends StatefulWidget {

  
  @override
  State<ModalNuevaDenuncia> createState()=> _ModalNuevaDenunciaState();
  }
  
  class _ModalNuevaDenunciaState extends State<ModalNuevaDenuncia>{
     
  final GlobalKey<FormState>_formularioKey = GlobalKey<FormState>();
  
  var selectedType;
  
  List<String> _denunciaType=<String>[
    'Robo',
    'Asalto',
    'Accidente de Transito',
    'Actividad Sospechosa',
    'Incendio',
    'Accidente Médico'
  ];
  List<String> _tipoType=<String>[
    'Victima',
    'Testigo'
  ];
  
 void openFile(PlatformFile file) {
   OpenFile.open(file.path!);
 }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        
            
            padding: EdgeInsets.symmetric(horizontal: 55, vertical: 20),
            color: Colors.white,
            child: Form(
              
              key:  _formularioKey,
              child: SingleChildScrollView(
                
                child: Column(
                  
                  children: [
              SizedBox(
                  height: 250.0,
                  width: 350.0,
                  child: Image.asset("assets/110.png"),
                ),
                
                  DropdownButton(
                items: _denunciaType.map((value) =>DropdownMenuItem(child: Text(
                  value,
                  style:  TextStyle(color: Color(0xff11b719)),
                  ),
                  value: value,
                  )).toList(), onChanged: (selectedDenunciaType) { 
                    setState(() {
                      selectedType=selectedDenunciaType;
                    });
                   },
                   value:selectedType,
                   isExpanded: false,
                   hint: Text ('Elija tipo de Denuncia', style: TextStyle(color: Color(0xff11b719)),),
              ),
              SizedBox(height: 15),
              DropdownButton(
                items: _tipoType.map((value) =>DropdownMenuItem(child: Text(
                  value,
                  style:  TextStyle(color: Color(0xff11b719)),
                  ),
                  value: value,
                  )).toList(), onChanged: (selectedTipoType) { 
                    setState(() {
                      selectedType=selectedTipoType;
                    });
                   },
                   value:selectedType,
                   isExpanded: false,
                   hint: Text ('¿Eres Victima o Testigo?', style: TextStyle(color: Color(0xff11b719)),),
              ),
              
              
              SizedBox(height: 90),


              Row(
                
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  RaisedButton(
                    child: Text('Cargar Fotografía'),
                    onPressed: (){
                      
                    },
                  ),
                SizedBox(width: 200),
              ElevatedButton(child: Text('Adjuntar archivo'),
              onPressed: () async {
                final result = await FilePicker.platform.pickFiles();
                if (result == null) return;
                final file = result.files.first;
                //openFile(file);
                print('Nombre: ${file.name}');
                print('Bytes: ${file.bytes}');
                print('Tamaño: ${file.size}');
                print('Extension: ${file.extension}');
                 print('Ruta: ${file.path}');
              },),
              SizedBox(width: 200),
             
             
              
                  ElevatedButton(child: Text('Enviar'),
                  
                    onPressed:() async {
                      
                    
                   
                    
                   
                    },
                  ),
                  
                
                ],
                
              ),
              
              
              SizedBox(width: 5),
              
              
                 SizedBox(height: 250,),
              Text('Advertencia!!', style: TextStyle(fontSize: 30, color: Color(0xffff0000),
              
            ),),
            Text('Toda "Denuncia Falsa" es penada conforme a ley, usa esta aplicación con responsabilidad, la seguridad depende de todos.', style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 14, 13, 13),
              
            ),),
            ],
            ),
            ),
          ),
        
      ),
    );
    
}
  }