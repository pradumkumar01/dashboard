import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MonthCalendarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MonthCalendar(),
    );
  }
}

class MonthCalendar extends StatefulWidget {
  @override
  _MonthCalendarState createState() => _MonthCalendarState();
}

class _MonthCalendarState extends State<MonthCalendar> {
  late DateTime _focusedDate;
  late List<DateTime> _daysInMonth;

  @override
  void initState() {
    super.initState();
    _focusedDate = DateTime.now();
    _daysInMonth = _getDaysInMonth(_focusedDate);
  }

  // Get all days for the current month
  List<DateTime> _getDaysInMonth(DateTime date) {
    final firstDay = DateTime(date.year, date.month, 1);
    final lastDay = DateTime(date.year, date.month + 1, 0);

    return List.generate(
      lastDay.day,
      (index) => DateTime(date.year, date.month, index + 1),
    );
  }

  // Navigate to the previous or next month
  void _changeMonth(int offset) {
    setState(() {
      _focusedDate =
          DateTime(_focusedDate.year, _focusedDate.month + offset, 1);
      _daysInMonth = _getDaysInMonth(_focusedDate);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 4, 52, 136),
      body: Card(
        child: Container(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 14,
                    ),
                    onPressed: () => _changeMonth(-1), // Go to previous month
                  ),
                  Text(
                    DateFormat('MMMM yyyy').format(_focusedDate),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      size: 14,
                    ),
                    onPressed: () => _changeMonth(1), // Go to next month
                  ),
                ],
              ),
              // Weekday headers
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(
                  7,
                  (index) {
                    final weekday = DateFormat.E().format(
                      DateTime(2023, 1, 1 + index),
                    );
                    return Expanded(
                      child: Center(
                        child: Text(
                          weekday,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    );
                  },
                ),
              ),
              // Calendar grid
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 7, // 7 days in a week
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                  ),
                  itemCount: _daysInMonth.length,
                  itemBuilder: (context, index) {
                    final day = _daysInMonth[index];
                    return GestureDetector(
                      onTap: () {
                        // Action on day tap
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                              content: Text(
                                  'Selected: ${DateFormat.yMMMd().format(day)}')),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: day.day == DateTime.now().day &&
                                  day.month == DateTime.now().month &&
                                  day.year == DateTime.now().year
                              ? Colors.blue
                              : Colors.grey[200],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Text(
                            '${day.day}',
                            style: TextStyle(
                              color: day.day == DateTime.now().day &&
                                      day.month == DateTime.now().month &&
                                      day.year == DateTime.now().year
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
