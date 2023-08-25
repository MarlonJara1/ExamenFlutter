import 'package:aves_flutter/screen_views/widgets/input_products.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  final valorUnitario = TextEditingController();
  final cantidad = TextEditingController();
  double resultado = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            InputProducts(
              obscureText: false,
              controller: valorUnitario,
              hintext: 'Ingrese el valor unitario',
              labelText: 'Valor Unitario',
              icon: Icon(Icons.numbers_sharp),
              validacionNum: [
                FilteringTextInputFormatter.allow(
                  RegExp(r'^\d+\.?\d{0,2}$'),
                ),
              ],
            ),
            InputProducts(
              obscureText: false,
              controller: cantidad,
              hintext: 'Ingrese la cantidad',
              labelText: 'Cantidad',
              icon: Icon(Icons.numbers_sharp),
              validacionNum: [
                FilteringTextInputFormatter.allow(
                  RegExp(r'^\d+\.?\d{0,2}$'),
                ),
              ],
            ),
            Text("Resultado: $resultado"), // Colocado aquí
          ],
        ),
      ),
      floatingActionButton: Container(
        margin: const EdgeInsets.symmetric(horizontal: 100, vertical: 200),
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              resultado = (double.parse(cantidad.text) *
                  (double.parse(valorUnitario.text)));
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

