import 'package:flutter/material.dart';
import 'recuperarMenu.dart';

class menu extends StatefulWidget{
  _menu createState() => _menu();
}

class _menu extends State<menu>{
  String urlImagen = "https://foodish-api.herokuapp.com/api";
  Future<void> dato() async{
    Map<String, dynamic> resp = await recuperarMenu.getDatos('');
    setState(() {
      urlImagen = resp['image'];
    });
  }

  @override
  void initState() {
    super.initState();
    dato();
  }

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.brown.shade50,
      appBar: AppBar(
        title: Text("Nuestro Menú"),
        backgroundColor: Colors.brown,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Echa un vistazo a nuestros platillos", 
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.blueGrey
              ),
            ),
            SizedBox(height: 10),
            Image.network(urlImagen, width: 250, height: 250),
            SizedBox(height: 10),
             Text(
              "¿Ya decidiste qué comerás hoy? Si no puedes decidir, deja que nosotros nos encarguemos. Da click en el botón para encontrar un platillo ideal, puedes buscar cuantas veces quieras hasta encontrar lo que estas buscando.", 
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF3E2723)
              ),
            ),
            SizedBox(height: 25),
            ElevatedButton(
              onPressed: dato, 
              child: Text("Buscar un platillo"),
              style: ElevatedButton.styleFrom(
                primary: Colors.brown  
              )
            ),
          ],
        ),
      ),
    );
  }
}