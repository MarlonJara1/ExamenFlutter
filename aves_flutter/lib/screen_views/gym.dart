import 'package:aves_flutter/screen_views/calorias.dart';
import 'package:aves_flutter/screen_views/dietas.dart';
import 'package:aves_flutter/screen_views/imc.dart';
import 'package:aves_flutter/screen_views/presion.dart';
import 'package:aves_flutter/screen_views/sugerencias.dart';
import 'package:flutter/material.dart';

class Gym extends StatelessWidget {
  const Gym({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Menú"),
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://images-na.ssl-images-amazon.com/images/I/51WJ9ihNKWL._AC_SL1500_.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
              child: Text(''),
            ),
            ListTile(
              leading: const Icon(Icons.food_bank),
              title: const Text('Dieta'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Dietas()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.calculate),
              title: const Text('IMC'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Imc()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.hot_tub),
              title: const Text('Calorias'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Calorias()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.model_training),
              title: const Text('Rutinas de ejercicio'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Imc()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.health_and_safety),
              title: const Text('Presion arterial'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Presion()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.support_agent_rounded),
              title: const Text('Sugerencias'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Sugerencias()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
