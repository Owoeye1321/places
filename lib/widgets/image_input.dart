import 'dart:ffi';

import 'package:flutter/material.dart';

class ImageInput extends StatefulWidget{
  ImageInput({super.key});
  
  @override
  State<ImageInput> createState()=> _ImageInput();

}


class _ImageInput extends State<ImageInput>{
  _ImageInput();


@override
Widget build(BuildContext context){
  return Container(
    height: 250,
    decoration: BoxDecoration(border: Border.all(color: Theme.of(context).colorScheme.onSurface),),
    margin: const EdgeInsets.symmetric(vertical: 15),
    alignment: Alignment.center,
    width: double.infinity,
    child: TextButton.icon(onPressed: (){}, icon:const  Icon(Icons.camera), label: const Text("Take Picture")),
  );
}
}