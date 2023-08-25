import 'package:aves_flutter/screen_views/widgets/input_aves.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Aves extends StatefulWidget {
  const Aves({Key? key}) : super(key: key);

  @override
  _AvesState createState() => _AvesState();
}

class _AvesState extends State<Aves> {
  final cantidadAves = TextEditingController();
  final cantidadConcentrado = TextEditingController();
  final consumoAveDia = TextEditingController();
  double resultado = 0; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Aves S.A.S"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
             InputAves(
              obscureText: false,
              controller: cantidadAves,
              hintext: 'Ingrese Cantidad de Aves',
              labelText: 'Cantidad',
              icon: Icon(Icons.numbers_sharp),
              validacionNum: [
                FilteringTextInputFormatter.allow(
                  RegExp(r'^\d+\.?\d{0,2}$'),
                ),
              ],
            ),
            InputAves(
              obscureText: false,
              controller: cantidadConcentrado,
              hintext: 'Ingrese Consumo por Dia',
              labelText: 'Concentrado',
              icon: const Icon(Icons.airline_seat_flat_angled_outlined),
              validacionNum: [
                FilteringTextInputFormatter.allow(
                  RegExp(r'^\d+\.?\d{0,2}$'),
                ),
              ],
            ),
            InputAves(
              obscureText: false,
              controller: consumoAveDia,
              hintext: 'Ingrese Bultos Comprados',
              labelText: 'Bultos de Concentrado',
              icon: const Icon(Icons.arrow_circle_down_sharp),
              validacionNum: [
                FilteringTextInputFormatter.allow(
                  RegExp(r'^\d+\.?\d{0,2}$'),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        margin: const EdgeInsets.symmetric(horizontal: 100, vertical: 320),
        child: ElevatedButton(
          onPressed: () {
            setState(() {
             
              resultado = (double.parse(cantidadConcentrado.text) * 40 * 1000) /
                  double.parse(cantidadAves.text) /
                  double.parse(consumoAveDia.text);
            });
          },
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            minimumSize: const Size(50, 50),
          ),
          child: const Text('Mostrar Información'),
        ),
      ),
      //  Text("Resultado: $resultado"),
      
    );
  }
}
