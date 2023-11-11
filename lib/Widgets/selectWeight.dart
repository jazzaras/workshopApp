import 'package:flutter/material.dart';

class SelectWeight extends StatefulWidget {
  const SelectWeight({super.key});

  @override
  State<SelectWeight> createState() => _SelectWeightState();
}

class _SelectWeightState extends State<SelectWeight> {
  var weight = 65;

  @override
  Widget build(BuildContext context) {
    void add() {
      setState(() {
        weight++;
      });
    }

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 60),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 69, 64, 116),
          borderRadius: BorderRadius.circular(12)),
      width: double.infinity,
      height: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            "Weight",
            style: TextStyle(
                color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
          ),
          Text(
            "$weight kg",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    weight -= 1;
                  });
                },
                child: Icon(Icons.remove),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 115, 106, 189),
                  shape: CircleBorder(),
                ),
              ),
              ElevatedButton(
                onPressed: add,
                child: Icon(Icons.add),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 115, 106, 189),
                  shape: CircleBorder(),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
