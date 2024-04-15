import 'package:flutter/material.dart';
import 'package:inherited_counter_app/inherited_state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return InheritedState(
      number: 0,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: const Home(),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var newNumber = InheritedState.of(context).number;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Text(
              '$newNumber',
              style: const TextStyle(fontSize: 100),
            ),
          ),
          SizedBox(
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    newNumber++;
                  });
                },
                child: const Icon(Icons.add)),
          ),
        ],
      ),
    );
  }
}
