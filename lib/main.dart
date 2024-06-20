import 'package:flutter/material.dart';
import 'package:flutter_dinamik_not/constarts/app_constrats.dart';
import 'package:flutter_dinamik_not/widgets/ortalama_hesapla_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dinamik ortalama hesapla',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Sabitler.anaRenk,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: OrtalamaHesaplaPage(),
    );
    
  }
}