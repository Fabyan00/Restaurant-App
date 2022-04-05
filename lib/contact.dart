import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_sms/flutter_sms.dart';
import 'dart:io';

class contact extends StatefulWidget{
  @override
  _contact createState() => _contact();
}

class _contact extends State<contact>{
  whatsApp(String message, String destinatario) async {
    var whatsapp = destinatario;
    var whatsappURl_android =
        "whatsapp://send?phone=" + whatsapp + "&text=" + message;
    var whatappURL_ios = "https://wa.me/$whatsapp?text=${Uri.parse(message)}";
    if (Platform.isIOS) {
      // for iOS phone only
      if (await canLaunch(whatappURL_ios)) {
        await launch(whatappURL_ios, forceSafariVC: false);
      } else {
        print("WhatsApp no instalado");
      }
    } else {
      print(whatsappURl_android);
      // android , web
      if (await canLaunch(whatsappURl_android)) {
        await launch(whatsappURl_android);
      } else {
        print("WhatsApp no instalado");
      }
    }
  }

  mensajear(String msm, List<String> d) async{
    String r = await sendSMS(message: msm, recipients: d).catchError(
      (onError){
      print(onError);
    });
  }
  //Todo lo que tiene que ver con comunicaciones se hace con sync
  llamar() async{
    const url = 'tel: +525512345678';
    if(await canLaunch(url)){
      await launch(url);
    }else{
      throw 'Error, no se puede realizar la llamada al: $url';
    }
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor: Colors.brown.shade50,
        appBar: AppBar(
          title: Text('Contáctanos'),
          backgroundColor: Colors.brown,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                '¡Te esperamos!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.blueGrey
                ),
              ),
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('images/service.jpg'),
                    fit: BoxFit.fitWidth
                  )
                ),
              ),
              Text(
                'Contactanos y reserva tu lugar, nuestro servicio es de 8 de la mañana a 12 de la noche. Esperamos tu llamada, mensaje de texto o WhatssApp:',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color:  Color(0xFF3E2723)
                ),
              ),
              Container(
                margin: EdgeInsets.all(25),
                width: 100,
                child: TextButton(
                  child: Text('Llamar', style: TextStyle(fontSize: 20)),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blueGrey,
                    onPrimary: Colors.white
                  ),
                   onPressed: llamar
                ),
              ),
              Container(
                margin: EdgeInsets.all(25),
                width: 100,
                child: TextButton(
                  child: Text('SMS', style: TextStyle(fontSize: 20)),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.amber,
                    onPrimary: Colors.white
                  ),
                   onPressed: (){
                     String msj = "Hola, quisiera hacer una reservación.";
                     List<String> d = ["+525512345678", "+525566778899"];
                      mensajear(msj, d);
                   }
                ),
              ),
              Container(
                margin: EdgeInsets.all(25),
                width: 120,
                child: TextButton(
                  child: Text('WhatsApp', style: TextStyle(fontSize: 20)),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    onPrimary: Colors.white
                  ),
                   onPressed: (){
                    String mensaje = "Hola, quisiera reservar.";
                    String destinatario = "+525513229552";
                    whatsApp(mensaje, destinatario);
                   }
                ),
              )
            ],
          ),
        ),
    );
  }
}
