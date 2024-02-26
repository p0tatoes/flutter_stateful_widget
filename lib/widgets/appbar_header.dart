import 'package:flutter/material.dart';

class AppBarHeader extends StatelessWidget {
  final String title;
  const AppBarHeader({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Image(
          image: AssetImage('assets/uni-seal-white.png'),
          height: 30.0,
        ),
        const SizedBox(
          width: 15.0,
        ),
        Text(
          title.toUpperCase(),
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
        )
      ],
    );
  }
}
