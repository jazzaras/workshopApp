import 'package:flutter/material.dart';

class HeightInput extends StatelessWidget {
  const HeightInput({super.key, required this.txCtrl});

  final TextEditingController txCtrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 60),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 69, 64, 116),
        borderRadius: BorderRadius.circular(12),
      ),
      height: 150,
      width: double.infinity,
      child: Column(
        children: [
          const Text(
            "Height",
            style: TextStyle(
              fontSize: 35,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          TextField(
            controller: txCtrl,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              fillColor: Color.fromARGB(255, 95, 91, 133),
              filled: true,
            ),
          )
        ],
      ),
    );
  }
}
