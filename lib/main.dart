import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Stateful Widgets",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: true),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int colorCode = 0;

  @override
  Widget build(BuildContext context) {
    Color bgColor = colorCode == 0 ? Colors.red : Colors.blue;
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          "STATEFUL WIDGETS",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
        ),
        backgroundColor: Colors.deepPurple[900],
      ),
      body: Center(
        child: Container(
          color: bgColor,
          width: width * 0.8,
          height: height * 0.8,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  print("Red");
                  setState(() {
                    colorCode = 0;
                  });
                },
                style: ButtonStyle(
                  overlayColor: MaterialStatePropertyAll(Colors.red[900]),
                ),
                child: const Text(
                  "Red",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w900),
                ),
              ),
              SizedBox(
                width: width * 0.1,
              ),
              TextButton(
                onPressed: () {
                  print("Blue");
                  setState(() {
                    colorCode = 1;
                  });
                },
                style: ButtonStyle(
                  overlayColor: MaterialStatePropertyAll(Colors.blue[900]),
                ),
                child: const Text(
                  "Blue",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w900),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
