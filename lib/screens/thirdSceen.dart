import 'package:flutter/material.dart';
import 'package:stateful_widgets/widgets/appbar_header.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const AppBarHeader(title: "stateful widgets - third screen"),
        backgroundColor: Colors.deepPurple[900],
      ),
    );
  }
}
