import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageInput extends StatefulWidget {
  ImageInput({super.key, required this.onPickImage});

  final void Function(File image) onPickImage;

  @override
  State<ImageInput> createState() => _ImageInput();
}

class _ImageInput extends State<ImageInput> {
  File? _seletedImage;

  void _takePicture() async {
    //this function initiate the camera
    final imagePicker = ImagePicker();
    final pickedImage =
        await imagePicker.pickImage(source: ImageSource.gallery, maxWidth: 600);

    if (pickedImage == null) {
      return;
    }
    setState(() {
      _seletedImage = File(pickedImage.path);
    });
    widget.onPickImage(_seletedImage!);
  }

  @override
  Widget build(BuildContext context) {
    Widget content = TextButton.icon(
      onPressed: _takePicture,
      icon: const Icon(Icons.camera),
      label: const Text("Take Picture"),
    );

    if (_seletedImage != null) {
      content = GestureDetector(
        onTap: _takePicture,
        child: Image.file(_seletedImage!,
            fit: BoxFit.cover, width: double.infinity, height: double.infinity),
      );
    }
    return Container(
      height: 250,
      decoration: BoxDecoration(
          border: Border.all(
              color: Theme.of(context).colorScheme.onSurface.withOpacity(0.2))),
      margin: const EdgeInsets.symmetric(vertical: 15),
      alignment: Alignment.center,
      width: double.infinity,
      child: content,
    );
  }
}
