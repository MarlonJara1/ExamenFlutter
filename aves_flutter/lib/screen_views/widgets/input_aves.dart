import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputAves extends StatelessWidget {
 final String? hintext;
  final String? labelText;
  final bool obscureText;
  final Icon? icon;
  final List<TextInputFormatter> validacionNum;
  final TextEditingController controller;


const InputAves({ Key? key, this.hintext, this.labelText, required this.obscureText, this.icon, required this.validacionNum, required this.controller }) : super(key: key);


  @override
  Widget build(BuildContext context){
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      margin: EdgeInsets.only(top: 17),
      child: TextFormField(
        controller: controller,
        autofocus: true,
        textCapitalization: TextCapitalization.words,
        obscureText: obscureText,
         inputFormatters: validacionNum , 
        decoration: InputDecoration(
          hintText: hintext,
          labelText: labelText,
          helperText: 'Solo numeros',
          prefixIcon: icon,
          
        )
    
      ),
    );
  }
}