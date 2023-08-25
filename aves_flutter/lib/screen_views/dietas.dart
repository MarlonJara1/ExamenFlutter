import 'package:flutter/material.dart';

class Dietas extends StatelessWidget {
  const Dietas({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Dietas'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20), // Agrega un padding horizontal al texto
            child: Text(
              'Un vaso de leche, una infusión o un café. Una tostada de pan integral con tomate y queso fresco.',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center, // Centra el texto horizontalmente
            ),
          ),
            SizedBox(height: 20),
            ClipRRect(
              borderRadius: BorderRadius.circular(100), // Radio de la esquina para redondear
              child: Image.network(
                'https://th.bing.com/th/id/R.7b554e9a2cdb292525f61b950477a38b?rik=alUBI8bHHt8lNw&pid=ImgRaw&r=0',
                width: 200,
                height: 200,
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
