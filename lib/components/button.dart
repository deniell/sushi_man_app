import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;

  const Button({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(121, 135, 81, 77),
      ),
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          // text
          Text(
            text,
            style: TextStyle(
              color: Colors.white,
            ),
          ),

          const SizedBox(width: 10,),

          // icon
          Icon(
            Icons.arrow_forward,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
