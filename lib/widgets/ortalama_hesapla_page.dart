import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_dinamik_not/constarts/app_constrats.dart';
import 'package:flutter_dinamik_not/widgets/ortalama_goster.dart';

class OrtalamaHesaplaPage extends StatefulWidget {
  OrtalamaHesaplaPage({Key? key}) : super(key: key);

  @override
  _OrtalamaHesaplaPageState createState() => _OrtalamaHesaplaPageState();
}

class _OrtalamaHesaplaPageState extends State<OrtalamaHesaplaPage> {
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Center(
              child: Text(
                Sabitler.baslikText,
                style: Sabitler.baslikStyle,
              ),
            )),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: _buildForm(),
                  ),
                
                Expanded(
                  flex: 1,
                  child: OrtalamaGoster(dersSayisi: 5, ortalama: 26.875754)
                )
              ],
            ),
            Expanded(
              child: Container(
                child: Text('Liste Buraya gelecek'),
                color: Colors.blue,
              ),
            )
          ],
        ));
  }

  Widget _buildForm() {
    return Form(
      key: formKey,
      child: Column(
        children: [
          _builTextFormField(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(onPressed: () {},
               icon: Icon(Icons.ac_unit),
               ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.ac_unit),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.ac_unit),
              ),
              ],
          )
        ],
      ),
    );
  }
  
  _builTextFormField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Matematik',
        border: OutlineInputBorder( borderRadius:Sabitler.borderRadius),
        filled: true,
        fillColor: Sabitler.anaRenk.shade100.withOpacity(0.2)
      ),
      
    );
  }
}
