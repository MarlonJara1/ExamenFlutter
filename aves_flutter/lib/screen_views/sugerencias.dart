import 'package:aves_flutter/screen_views/widgets/input_Presion.dart';
import 'package:aves_flutter/screen_views/widgets/input_products.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Sugerencias extends StatefulWidget {
  const Sugerencias({Key? key}) : super(key: key);

  @override
  _SugerenciasState createState() => _SugerenciasState();
}

class _SugerenciasState extends State<Sugerencias> {
  final nombre = TextEditingController();
  final celular = TextEditingController();
  final correo = TextEditingController();

  String informacion = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            InputProducts(
              obscureText: false,
              controller: celular,
              hintext: 'Celular',
              labelText: 'Celular',
              icon: Icon(Icons.numbers_sharp),
              validacionNum: [
                FilteringTextInputFormatter.allow(
                  RegExp(r'^\d+\.?\d{0,2}$'),
                ),
              ],
            ),
            InputProducts(
              obscureText: false,
              controller: correo,
              hintext: 'Correo ',
              labelText: 'Correo',
              icon: Icon(Icons.numbers_sharp),
              validacionNum: [
                FilteringTextInputFormatter.allow(
                  RegExp(''),
                ),
              ],
            ),
            InputProducts(
              obscureText: false,
              controller: nombre,
              hintext: 'Nombre',
              labelText: 'Nombre',
              icon: Icon(Icons.numbers_sharp),
              validacionNum: [
                FilteringTextInputFormatter.allow(
                  RegExp(''),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        margin: const EdgeInsets.symmetric(horizontal: 100, vertical: 200),
        child: ElevatedButton(
          onPressed: () {
            setState(() {});
          },
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            minimumSize: const Size(50, 50),
          ),
          child: const Text('Enviar'),
        ),
      ),
    );
  }
}
