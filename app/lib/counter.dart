import 'package:app/setting.dart';
import 'package:flutter/material.dart';

class CounterView extends StatefulWidget {
  const CounterView({super.key});

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  int counters = 0;

  void incrementValue() {
    setState(() {
      counters++;
    });
  }

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(child: Text("CounterApp")),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SettingView(),
                    ));
              },
              icon: const Icon(Icons.settings))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text("Press Button To Increment this value"),
            Text(
              '$counters',
              style: const TextStyle(fontSize: 25),
            )
          ],
        ),
      ),
      floatingActionButton:
          FloatingActionButton(
            onPressed: incrementValue,
            tooltip: "Increment The Value",
            child: const Icon(Icons.add),),

            
    );
  }
}
