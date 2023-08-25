import 'package:aves_flutter/screen_views/widgets/input_Presion.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Presion extends StatefulWidget {
  const Presion({Key? key}) : super(key: key);

  @override
  _PresionState createState() => _PresionState();
}

class _PresionState extends State<Presion> {
  final presion = TextEditingController();
  String informacion = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            InputPresion(
              obscureText: false,
              controller: presion,
              hintext: 'Ingrese la presion arterial',
              labelText: 'Presion',
              icon: Icon(Icons.numbers_sharp),
              validacionNum: [
                FilteringTextInputFormatter.allow(
                  RegExp(r'^\d+\.?\d{0,2}$'),
                ),
              ],
            ),
            Text("informacion: $informacion"),
          ],
        ),
      ),
      floatingActionButton: Container(
        margin: const EdgeInsets.symmetric(horizontal: 100, vertical: 200),
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              if (int.parse(presion.text) < 120) {
                informacion = 'Normal';
              } else if (int.parse(presion.text) >= 120 &&
                  int.parse(presion.text) <= 129) {
                informacion =
                    'Presión arterial alta (sin otros factores de riesgo cardíaco)';
              } else if (int.parse(presion.text) >= 130 &&
                  int.parse(presion.text) <= 179) {
                informacion =
                    'Presión arterial alta (con otros factores de riesgo cardíaco, según algunos proveedores)';
              } else {
                informacion =
                    'Presión arterial peligrosamente alta - Busque atención médica de inmediato';
              }
            });
          },
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            minimumSize: const Size(50, 50),
          ),
          child: const Text('Mostrar'),
        ),
      ),
    );
  }
}
