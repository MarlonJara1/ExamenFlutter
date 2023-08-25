import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:aves_flutter/screen_views/widgets/input_calorias.dart';

class Calorias extends StatefulWidget {
  const Calorias({Key? key}) : super(key: key);

  @override
  _CaloriasState createState() => _CaloriasState();
}

class _CaloriasState extends State<Calorias> {
  final caloriaUno = TextEditingController();
  final caloriaDos = TextEditingController();
  final caloriaTres = TextEditingController();
  String mensaje = '';

  double resultado = 0;
  String selectedGenero = 'Mujer'; 
  List<String> generos = ['Mujer', 'Hombre'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            DropdownButtonFormField(
              items: generos.map((e) {
                return DropdownMenuItem(
                  child: Text(e),
                  value: e,
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedGenero = value.toString();
                });
              },
            ),
            SizedBox(
              height: 16.0,
            ),
            InputCalorias(
              obscureText: false,
              controller: caloriaUno,
              hintext: 'Ingrese las calorias del desayuno',
              labelText: 'Desayuno',
              icon: Icon(Icons.numbers_sharp),
              validacionNum: [
                FilteringTextInputFormatter.allow(
                  RegExp(r'^\d+\.?\d{0,2}$'),
                ),
              ],
            ),
            InputCalorias(
              obscureText: false,
              controller: caloriaDos,
              hintext: 'Ingrese las calorias del almuerzo',
              labelText: 'Almuerzo',
              icon: Icon(Icons.numbers_sharp),
              validacionNum: [
                FilteringTextInputFormatter.allow(
                  RegExp(r'^\d+\.?\d{0,2}$'),
                ),
              ],
            ),
            InputCalorias(
              obscureText: false,
              controller: caloriaTres,
              hintext: 'Ingrese las calorias de la cena',
              labelText: 'Cena',
              icon: Icon(Icons.numbers_sharp),
              validacionNum: [
                FilteringTextInputFormatter.allow(
                  RegExp(r'^\d+\.?\d{0,2}$'),
                ),
              ],
            ),
            Text("Mensaje: $mensaje"),
            Text("Resultado: $resultado"),
          ],
        ),
      ),
      floatingActionButton: Container(
        margin: const EdgeInsets.all(150),
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              resultado = double.parse(caloriaUno.text) +
                  double.parse(caloriaDos.text) +
                  double.parse(caloriaTres.text);

              if (selectedGenero == 'Mujer' && resultado < 1600) {
                mensaje = 'Deficit calorico M';
              }
              else if (selectedGenero == 'Mujer' && resultado >= 1600 && resultado <=2000){
                mensaje = 'Consumo normal';
              }
              else if (selectedGenero == 'Mujer' && resultado >2000){
                mensaje = 'Consumo excesivo';
              }
               else if (selectedGenero == 'Hombre' && resultado < 1600) {
                mensaje = 'Deficit calorico H';
              } else if (selectedGenero == 'Hombre' && resultado >= 1600 && resultado <=2500){
                mensaje = 'Consumo normal';
              }else if (selectedGenero == 'Hombre' && resultado > 2500){
                mensaje = 'Consumo Excesivo';
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
