import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          centerTitle: true,
          leading: Icon(Icons.arrow_back),
          title: Text("4th April 2026"),
        ),

        body: Container(
          child: Column(
            children: [
              
              const SizedBox(height: 10),

              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: 80,
                      color: Colors.redAccent,
                      child: Center(child: Text("22CSE011")),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 80,
                      color: Colors.green,
                      child: Center(child: Text("O+")),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 80,
                      color: Colors.blue,
                      child: Center(child: Text("Barishal")),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 100,
                    width: 250,
                    decoration: const BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      "110-011-22",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ),

              Expanded(
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 20),
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.purpleAccent,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(child: Text("Rony")),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
