import 'package:flutter/material.dart';
import 'package:places/screens/places.dart';

class NewItem extends StatefulWidget {
  final void Function(Places places) addPlaces;
  NewItem({super.key, required this.addPlaces});

  @override
  State<NewItem> createState() => _NewItemState();
}

class _NewItemState extends State<NewItem> {
  final _formKey = GlobalKey<FormState>();
  var placeName = '';
  bool _isSaving = false;
  void savePlaces() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text("Add New Place"),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                style: TextStyle(
                    color: Theme.of(context).colorScheme.onBackground),
                decoration: const InputDecoration(
                  label: Text("Name"),
                ),
                validator: (value) {
                  if (value == null ||
                      value.isEmpty ||
                      value.trim().length <= 1 ||
                      value.trim().length >= 50) {
                    return "Must be between 1 and 50 characters";
                  }
                  return null;
                },
                onSaved: (value) {
                  placeName = value!;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 120,
                child: ElevatedButton(
                  onPressed: savePlaces,
                  child: Row(
                    children: const [
                      Icon(Icons.add),
                      SizedBox(width: 5),
                      Text("Add Place"),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
