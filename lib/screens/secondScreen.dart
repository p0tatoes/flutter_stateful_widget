import 'package:flutter/material.dart';
import 'package:stateful_widgets/widgets/appbar_header.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const AppBarHeader(title: "STATEFUL WIDGETS - SECOND SCREEN"),
        backgroundColor: Colors.deepPurple[900],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
                context, "/third", ModalRoute.withName("/"));
          },
          child: Text("to Third Screen"),
        ),
      ),
    );
  }
}
