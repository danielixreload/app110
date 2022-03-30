import 'package:bol110pol/views/denuncias.dart';
import 'package:bol110pol/views/panico.dart';
import 'package:flutter/material.dart';

void main() => runApp(Home());

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _paginaHome = 0;
  List<Widget> _paginas = [
    denuncias(),
    panico(),
    
    
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('ELIJA EL TIPO DE DENUNCIA'),
          backgroundColor: const Color.fromARGB(255, 21, 131, 85),
        ),
        body: _paginas[_paginaHome],
        
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index){
            setState(() {
              _paginaHome = index;
            });
          },
          currentIndex: _paginaHome,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "DENUNCIAS" ),
            BottomNavigationBarItem(icon: Icon(Icons.alarm),label: "PANICO")

          ],
          ),
      ),
    );
  }
}

