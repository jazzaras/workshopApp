import 'package:flutter/material.dart';

import '../Widgets/HeightInput.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var weight = 70;
  var result = null;
  TextEditingController txCtrl = TextEditingController();
  void submit() {
    setState(() {
      var height = int.parse(txCtrl.text) / 100;
      result = weight / (height * height);
      print(result);
    });
  }

  void add() {
    setState(() {
      weight++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2C284D),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 100),
              const Text(
                "BMI INDEX",
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color.fromARGB(255, 69, 64, 116),
                    ),
                    height: 120,
                    width: 120,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.male,
                          color: Colors.white,
                          size: 70,
                        ),
                        Text(
                          "Male",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w300),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 50),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color.fromARGB(255, 69, 64, 116),
                    ),
                    height: 120,
                    width: 120,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.female,
                          color: Colors.white,
                          size: 70,
                        ),
                        Text(
                          "Female",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w300),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              HeightInput(txCtrl: txCtrl),
              const SizedBox(height: 20),
              Container(
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
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "$weight kg",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
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
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: submit,
                child: Text("Submit"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 69, 64, 116)),
              ),
              if (result != null)
                Text(
                  result.toString(),
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
