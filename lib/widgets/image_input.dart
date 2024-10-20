import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageInput extends StatefulWidget{
  ImageInput({super.key});
  
  @override
  State<ImageInput> createState()=> _ImageInput();

}


class _ImageInput extends State<ImageInput>{
  File? _seletedImage;


void _takePicture() async {
  //this function initiate the camera
  final imagePicker = ImagePicker();
  final pickedImage = await imagePicker.pickImage(source: ImageSource.camera, maxWidth: 600);

  if(pickedImage == null){
    return;
  }
  _seletedImage = File(pickedImage.path);

}

@override
Widget build(BuildContext context){
  return Container(
    height: 250,
    decoration: BoxDecoration(border: Border.all(color: Theme.of(context).colorScheme.onSurface.withOpacity(0.2))),
    margin: const EdgeInsets.symmetric(vertical: 15),
    alignment: Alignment.center,
    width: double.infinity,
    child: TextButton.icon(onPressed: _takePicture, icon:const  Icon(Icons.camera), label: const Text("Take Picture")),
  );
}
}