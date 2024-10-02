import 'package:flutter/material.dart';
import 'package:places/screens/places.dart';

class NewItem extends StatelessWidget {
  final void Function(Places places) addPlaces;
  const NewItem({super.key, required this.addPlaces});

  @override
  Widget build(BuildContext context) {
    String placeName;
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text("Add New Place"),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                style: TextStyle(
                    color: Theme.of(context).colorScheme.onBackground),
                decoration: const InputDecoration(
                  label: Text("Name"),
                ),
                validator: (value) {
                  if (value == '') return 'Name must be provided';
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
                  onPressed: () {},
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
