import 'package:flutter/material.dart';

class Illustration extends StatelessWidget {
  const Illustration({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: size.height*.25,
      child: const Image(image: AssetImage('assets/registration_background.png')),
    );
  }
}