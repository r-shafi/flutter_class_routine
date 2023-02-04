import 'package:class_routine/widgets/schedule_card.dart';
import 'package:flutter/material.dart';

const schedule = [
  {
    "name": "Basic Electrical Engineering",
    "room": "R-412",
    "time": "10:00 AM - 11:30 AM",
    "day": 0
  },
  {
    "name": "Discrete Mathematics",
    "room": "R-412",
    "time": "01:00 PM - 02:30 PM",
    "day": 0
  },
  {
    "name": "Structured Programming Language",
    "room": "R-412",
    "time": "02:30 PM - 04:00 PM",
    "day": 0
  },
  {
    "name": "Basic Electrical Engineering",
    "room": "R-501",
    "time": "08:30 AM - 10:00 AM",
    "day": 1
  },
  {
    "name": "Calculus",
    "room": "R-214",
    "time": "10:00 AM - 11:30 AM",
    "day": 1
  },
  {
    "name": "History of Emergence of the Independent Bangladesh",
    "room": "R-412",
    "time": "01:00 PM - 02:30 PM",
    "day": 1
  },
  {
    "name": "Structured Programming Language",
    "room": "R-214",
    "time": "08:30 AM - 10:00 AM",
    "day": 2
  },
  {
    "name": "Basic Electrical Engineering Lab",
    "room": "R-310",
    "time": "10:00 AM - 01:00 PM",
    "day": 2
  },
  {
    "name": "Discrete Mathematics",
    "room": "R-412",
    "time": "01:00 PM - 02:30 PM",
    "day": 2
  },
  {
    "name": "Calculus",
    "room": "R-412",
    "time": "10:00 AM - 11:30 AM",
    "day": 3
  },
  {
    "name": "Structured Programming Language Lab",
    "room": "R-301",
    "time": "10:00 AM - 01:00 PM",
    "day": 3
  },
  {
    "name": "Structured Programming Language Lab",
    "room": "R-309",
    "time": "10:00 AM - 01:00 PM",
    "day": 4
  },
  {
    "name": "History of Emergence of the Independent Bangladesh",
    "room": "R-412",
    "time": "01:00 PM - 02:30 PM",
    "day": 4
  }
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: DateTime.now().weekday >= 5 ? 0 : DateTime.now().weekday,
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            '🅲🆂🅴 🆂🅿🆁🅸🅽🅶',
            style: TextStyle(
              color: Colors.deepPurpleAccent,
            ),
          ),
          centerTitle: true,
          bottom: const TabBar(
            indicatorColor: Colors.deepPurpleAccent,
            labelColor: Colors.deepPurpleAccent,
            unselectedLabelColor: Colors.white70,
            tabs: [
              Tab(text: 'Sun'),
              Tab(text: 'Mon'),
              Tab(text: 'Tue'),
              Tab(text: 'Wed'),
              Tab(text: 'Thu'),
            ],
          ),
        ),
        body: TabBarView(
          children: List.generate(
            5,
            (index) => Padding(
              padding: const EdgeInsets.all(10),
              child: ListView(
                children: List.generate(
                  schedule.length,
                  (i) => schedule[i]['day'] == index
                      ? ScheduleCard(
                          name: schedule[i]['name'].toString(),
                          room: schedule[i]['room'].toString(),
                          time: schedule[i]['time'].toString(),
                        )
                      : const SizedBox(),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
