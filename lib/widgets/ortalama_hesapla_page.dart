import 'package:flutter/material.dart';
import 'package:flutter_dinamik_not/constarts/app_constrats.dart';

class OrtalamaHesaplaPage extends StatefulWidget{
  OrtalamaHesaplaPage({Key? key}):super(key: key);

  @override
  _OrtalamaHesaplaPageState createState()=> _OrtalamaHesaplaPageState();
}

class _OrtalamaHesaplaPageState extends State<OrtalamaHesaplaPage> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Center(child: Text(Sabitler.baslikText, style: Sabitler.baslikStyle,),)
      ),
      body: Center(child: Text('Merhaba'),)
    );
  }

}

