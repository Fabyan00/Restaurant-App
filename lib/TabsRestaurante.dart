import 'package:flutter/material.dart';
import 'home.dart';
import 'contact.dart';
import 'webSite.dart';
import 'menu.dart';

class TabsRestaurante extends StatefulWidget{
  @override
  _TabsRestaurante createState() => _TabsRestaurante();
}

class _TabsRestaurante extends State<TabsRestaurante>{
  int myIndex = 0;
  final screens=[
    //TAB 1
    home(),
    //TAB 2
    contact(),
    //TAB3
    webSite(),
    //TAB 4
    menu(),
  ];
  @override
  Widget build(BuildContext context){
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:Scaffold(
        body: IndexedStack(
          index: myIndex,
          children: screens,
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          //ColorOpcion1: backgroundColor: Color(0xFF4E342E),
          backgroundColor: Colors.white70,
          //Color cuando esta seleccionado
          selectedItemColor: Colors.brown,
          iconSize: 40,
          currentIndex: myIndex,
          onTap: (index) => setState(() => myIndex = index),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.phone), label: 'Contacto'),
            BottomNavigationBarItem(icon: Icon(Icons.web_asset), label: 'Sitio Web'),
            BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: 'Menu'),
          ],
          
        )
      )
    );
  }
}