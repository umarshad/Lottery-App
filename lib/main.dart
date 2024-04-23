import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int x = 0 ;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            centerTitle: true,
            title: const Text("Lottery App"),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "Lottery winning number is $x",
                  style: const TextStyle(fontSize: 16),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey.withOpacity(.2),
                ),
                height: x == 4 ?  500 : 250,
                width: 300,
                child: x == 4 ? Column(
                  children: [
                    const SizedBox(height: 25),
                    const Icon(
                      Icons.done_all,
                      color: Colors.green,
                      size: 32,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Text(
                      "Congratulations you won the lottery,\n your number is $x",
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 50),
                    const Image(image: AssetImage('images/congo.png'),
                    )
                  ],
                ) : Column(
                  children: [
                    const SizedBox(height: 25),
                    const Icon(
                      Icons.error_outline_outlined,
                      color: Colors.red,
                      size: 32,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Text(
                      "Better luck Next Time, \nyour lottery number is $x",
                      style: const TextStyle(fontSize: 16),
                    )
                  ],
                ),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor:  Colors.teal,
            onPressed: () {
              x = random.nextInt(6);
              setState(() {

              });

            },
            child: const Icon(Icons.refresh,),
          ),
        ),
      ),
    );
  }
}
