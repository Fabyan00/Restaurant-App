import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class webSite extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Visitanos en nuestro sitio web'),
        backgroundColor: Colors.brown,
      ),
      body: WebView(
        initialUrl: 'https://lamansion.com.mx/',
        javascriptMode: JavascriptMode.unrestricted
      ),
    );
  }
}