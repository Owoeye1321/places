import 'package:flutter/material.dart';

class NewItem extends StatelessWidget {
  const NewItem({super.key});

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
          child: Column(
            children: [
              TextFormField(
                style: TextStyle(
                    color: Theme.of(context).colorScheme.onBackground),
                decoration: const InputDecoration(
                  label: Text("Name"),
                ),
                validator: (value) {},
                onSaved: (value) {},
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
