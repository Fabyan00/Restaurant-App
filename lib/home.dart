import 'package:examen_mt/sliderItems.dart';
import 'package:flutter/material.dart';
import 'slider.dart';

class home extends StatelessWidget{
  final PageController pC = PageController(
    initialPage: 0
  );
  @override
    Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Bienvenido"), backgroundColor: Colors.brown),
      body: Container(
        decoration: new BoxDecoration(color: Colors.brown.shade50),
        padding: EdgeInsets.all(100),
        child: Column(
          children:<Widget>[
            Expanded(
              //child: slider(),
              child: PageView.builder(
                scrollDirection: Axis.vertical,
                controller: pC,
                itemCount: sliderList.length,
                itemBuilder: (context, indx) => slider(indx),
              ),
            )
          ]
        ),
      ),
    );
  }
}