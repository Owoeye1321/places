import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:places/model/place.dart';
import 'package:places/provider/new-places.dart';

class NewItem extends ConsumerStatefulWidget {
  //final void Function(Location places) addPlaces;
  NewItem({super.key });

  @override
  ConsumerState<NewItem> createState() => _NewItemState();
}

class _NewItemState extends ConsumerState<NewItem> {
  final _formKey = GlobalKey<FormState>();
  var placeName = '';
  bool _isSaving = false;
  void savePlaces() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      ref.read(placesProvider.notifier).addPlaces(Location( place:placeName));
      Navigator.of(context).pop();
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
                child: ElevatedButton.icon(
                  onPressed: savePlaces,
                  icon: const Icon(Icons.add),
                   label:
                   // Row(
                  //   children: const [
                  //     Icon(Icons.add),
                  //     SizedBox(width: 5),
                     const  Text("Add Place"),
                   // ],
                 // ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
