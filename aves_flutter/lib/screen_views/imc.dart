import 'package:aves_flutter/screen_views/widgets/input_Imc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Imc extends StatefulWidget {
  const Imc({Key? key}) : super(key: key);

  @override
  _ImcState createState() => _ImcState();
}

class _ImcState extends State<Imc> {
  final peso = TextEditingController();
  final altura = TextEditingController();
  double resultado = 0;
  String mensaje = ''; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            InputImc(
              obscureText: false,
              controller: peso,
              hintext: 'Ingrese el peso',
              labelText: 'Peso Kg',
              icon: Icon(Icons.numbers_sharp),
              validacionNum: [
                FilteringTextInputFormatter.allow(
                  RegExp(r'^\d+\.?\d{0,2}$'),
                ),
              ],
            ),
            InputImc(
              obscureText: false,
              controller: altura,
              hintext: 'Ingrese la altura',
              labelText: 'Altura',
              icon: Icon(Icons.numbers_sharp),
              validacionNum: [
                FilteringTextInputFormatter.allow(
                  RegExp(r'^\d+\.?\d{0,2}$'),
                ),
              ],
            ),
            Text("Resultado: $resultado"),
          ],
        ),
      ),
      floatingActionButton: Container(
        margin: const EdgeInsets.symmetric(horizontal: 100, vertical: 200),
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              resultado = double.parse(peso.text) / (double.parse(altura.text) * double.parse(altura.text));

              if (resultado < 18.5) {
                mensaje = "Peso inferior";
              }
              else if(resultado >= 18.5 && resultado <= 24.9){
                mensaje = "Peso normal";

              }
              else if(resultado >= 25.0 && resultado <= 29.9){
                mensaje = "Peso superior";

              }
              else if(resultado >29.9){
                mensaje = "Obesidad";
              }
               else {
                mensaje = ""; 
              }
            });
          },
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            minimumSize: const Size(50, 50),
          ),
          child: const Text('Calcular'),
        ),
      ),
    );
  }
}


