import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Month Buttons',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MonthButtonPage(),
    );
  }
}

class MonthButtonPage extends StatefulWidget {
  const MonthButtonPage({super.key});

  @override
  _MonthButtonPageState createState() => _MonthButtonPageState();
}

class _MonthButtonPageState extends State<MonthButtonPage> {
  final List<bool> _buttonStates = List.generate(12, (index) => false); // Initial states for each month
  final List<int> _selectedIndices = []; // Track selected indices

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Month Buttons'),
      ),
      body: GridView.builder(
        itemCount: 12,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                if (_selectedIndices.contains(index)) {
                  _selectedIndices.remove(index); // Deselect if already selected
                } else {
                  if (_selectedIndices.length < 2) {
                    _selectedIndices.add(index); // Select if less than 2 buttons are selected
                  } else {
                    // Do nothing if already two buttons are selected
                  }
                }

                // Toggle the state based on whether it's selected
                _buttonStates[index] = !_buttonStates[index];
              });
            },
            child: Container(
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: _buttonStates[index] ? Colors.green : Colors.red, // Set color based on state
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  '${index + 1}', // Display month number
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
