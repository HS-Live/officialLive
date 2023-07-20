import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  late DateTime _selectedDate;

  @override
  void initState() {
    super.initState();
    _selectedDate = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Color.fromARGB(255, 0, 0, 0)),
        title: Text('Game Schedule',
            style: GoogleFonts.bebasNeue(color: Color.fromARGB(255, 1, 39, 2))),
      ),
      body: Column(
        children: [
          TableCalendar(
            headerStyle: const HeaderStyle(
              titleCentered: true, // Set this property to true
              titleTextStyle: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),

                // Change this color to the desired color
                fontWeight: FontWeight.w600,
                fontSize: 17,
              ),
              leftChevronIcon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: 15,
              ),
              rightChevronIcon: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 15,
              ),
            ),
            firstDay: DateTime.utc(2000, 1, 1),
            lastDay: DateTime.utc(2040, 12, 31),
            focusedDay: _selectedDate,
            selectedDayPredicate: (day) {
              return isSameDay(_selectedDate, day);
            },
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                _selectedDate = selectedDay;
              });
            },
            calendarStyle: const CalendarStyle(
              defaultTextStyle: TextStyle(
                color: Colors.white,
              ), // Change this color to the desired color
            ),
            availableCalendarFormats: const {
              CalendarFormat.month: '',
            }, // Only show monthly view
          ),
          const SizedBox(height: 100),
          Expanded(
            child: Container(
              color: Colors.white,
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      'Event $index',
                      style: TextStyle(color: Colors.black),
                    ),
                    subtitle: Text(
                      'Location $index',
                      style: TextStyle(color: Colors.black),
                    ),
                    trailing: Text(
                      'Time $index',
                      style: TextStyle(color: Colors.black),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
