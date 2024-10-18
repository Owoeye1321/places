import 'package:flutter/material.dart';

import '../model/place.dart';

class AboutLocation extends StatelessWidget {
  final Location location;
  const AboutLocation({super.key, required this.location});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(location.place),
      ),
      body:  const Center(child: Text("Hello there")),
    );
  }
}
