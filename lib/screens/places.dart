import 'package:flutter/material.dart';
import 'package:places/screens/new-item.dart';

class Places extends StatefulWidget {
  const Places({super.key});

  @override
  State<Places> createState() => _PlacesState();
}

class _PlacesState extends State<Places> {
  void _itemPage() {
    Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => NewItem()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text("Places"),
        actions: [
          IconButton(
            onPressed: _itemPage,
            icon: const Icon(Icons.add),
          ),
          const SizedBox(
            width: 15,
          )
        ],
      ),
      body: Container(),
    );
  }
}
