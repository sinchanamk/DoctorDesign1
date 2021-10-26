import 'package:doctordes/Screens/calender_day.dart';
import 'package:doctordes/Screens/calender_month.dart';
import 'package:doctordes/Screens/calenderpage.dart';
import 'package:doctordes/Screens/notification.dart';
import 'package:doctordes/Screens/search.dart';
import 'package:flutter/material.dart';

import 'Bottom_Nav/bottom.dart';
import 'Screens/calender_agenda.dart';
import 'Screens/doctorhome.dart';
import 'Screens/task.dart';
import 'Screens/taskall.dart';
import 'Widgets/days.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home://NotificationScreen()
     BottomBarScreen(),
          );
  }
}
