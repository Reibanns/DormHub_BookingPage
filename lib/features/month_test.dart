import 'package:flutter/material.dart';

class ConditionalTextWidget extends StatelessWidget {
  final List<bool> monthsActive;

  const ConditionalTextWidget({super.key, required this.monthsActive});

  @override
  Widget build(BuildContext context) {
    List<String> activeMonths = [];
    for (int i = 0; i < monthsActive.length; i++) {
      if (monthsActive[i]) {
        // Months are 1-indexed, so adding 1 to index to get the month number
        activeMonths.add(_getMonthName(i + 1));
      }
    }

    return Text(
      'Active Months: ${activeMonths.join(', ')}',
      style: const TextStyle(fontSize: 16),
    );
  }

  String _getMonthName(int monthNumber) {
    switch (monthNumber) {
      case 1:
        return 'January';
      case 2:
        return 'February';
      case 3:
        return 'March';
      case 4:
        return 'April';
      case 5:
        return 'May';
      case 6:
        return 'June';
      case 7:
        return 'July';
      case 8:
        return 'August';
      case 9:
        return 'September';
      case 10:
        return 'October';
      case 11:
        return 'November';
      case 12:
        return 'December';
      default:
        return '';
    }
  }
}

class MyApp2 extends StatelessWidget {
  const MyApp2({super.key});

  @override
  Widget build(BuildContext context) {
    // Example boolean list representing active state of each month
    List<bool> monthsActive = [false, false, false, false, false, false, false, false, false, false, false, false];
    monthsActive[0] = true; // January is active
    monthsActive[3] = true; // April is active

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Conditional Text Example'),
        ),
        body: Center(
          child: ConditionalTextWidget(
            monthsActive: monthsActive,
          ),
        ),
      ),
    );
  }
}
