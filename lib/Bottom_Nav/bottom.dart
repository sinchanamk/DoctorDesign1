import 'package:doctordes/Screens/calender_agenda.dart';
import 'package:doctordes/Screens/calenderpage.dart';
import 'package:doctordes/Screens/doctorhome.dart';
import 'package:doctordes/Screens/notification.dart';
import 'package:doctordes/Screens/task.dart';
import 'package:doctordes/consts/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class BottomBarScreen extends StatefulWidget {
  static const routeName = '/BottomBarScreen';
  @override
  _BottomBarScreenState createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  List? _pages;
  int _selectedIndex = 0;
  @override
  void initState() {
    _pages = [
      {'page': DoctorHome(), 'title': 'Parents'},
      {'page': CalenderPage(), 'title': 'Calender'},
      {'page': TaskScreen(), 'title': 'Tasks'},
       {'page': NotificationScreen(), 'title': 'Notification'},
      {'page': TaskScreen(), 'title': 'More'},
     
    ];
    super.initState();
  }

  void _selectedPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages![_selectedIndex]['page'],
      bottomNavigationBar: SizedBox(
        height: 64,
        child: BottomNavigationBar(
          onTap: _selectedPage,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.red[900],
          unselectedItemColor: ColorsConsts.black,
          unselectedLabelStyle: TextStyle(fontSize:7,color: Colors.black) ,
          selectedLabelStyle: TextStyle(fontSize: 7),
          
          currentIndex: _selectedIndex,
          items: [
            BottomNavigationBarItem(
             icon: Icon(Icons.people_outline_sharp,size: 20,),
              label: 'Parents',
            ),
            BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today,size: 20,),
           
              label: 'Calender',
            ),
            BottomNavigationBarItem(
               icon: Icon(Icons.task,size: 20,),
           
              label: 'Tasks',
            ),
              BottomNavigationBarItem(
            icon: Icon(Icons.notification_add,size: 20,),
           
              label: 'Notification',
            ),
            BottomNavigationBarItem(
           icon: Icon(Icons.more_horiz,size: 20,),
           
              label: 'More',
            ),
          
          ],
        ),
      ),
    );
  }
}
