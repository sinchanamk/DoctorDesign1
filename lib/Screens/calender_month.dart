import 'package:doctordes/consts/const.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import 'drawer.dart';
class CalenderMonth extends StatefulWidget {
  const CalenderMonth({ Key? key }) : super(key: key);

  @override
  _CalenderMonthState createState() => _CalenderMonthState();
}

class _CalenderMonthState extends State<CalenderMonth> {
  // DatePickerController _controller = DatePickerController();

 // DateTime _selectedValue = DateTime.now();
  double width = 0.0;
  double height = 0.0;
   @override
  void didChangeDependencies() {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    super.didChangeDependencies();
  }
   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
 @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold( 
         key: _scaffoldKey,  drawer: Profile1(),
        appBar: AppBar(backgroundColor: ColorsConsts.blue,
        centerTitle: false,elevation: 0,
        title: Row(
          children: [
            IconButton(onPressed: (){}, icon:Icon(Icons.search,size: 30,)),
            Padding(
              padding: const EdgeInsets.only(left:25.0),
              child: Text('Calender'),
            )
          ],
        ),
          leading:Builder(
              builder: (context) => GestureDetector(
                  onTap: () {
                    Scaffold.of(context).openDrawer();},
             child: Padding(
                 padding: EdgeInsets.only(
                   bottom: 10),
                    child: Icon(
                      Icons.menu,
                      color: ColorsConsts.white,
                      size: 30,
                    ),
                      ),
         )),
       actions: [
         IconButton(onPressed: (){}, icon:Icon(Icons.calendar_today,size: 25,))
       ],  
         ),
     
          body: SfCalendar(
          headerStyle: CalendarHeaderStyle(
           // textAlign: TextAlign.center,
            backgroundColor: ColorsConsts.blue,
            textStyle: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.normal,
               
                color: ColorsConsts.white,
                fontWeight: FontWeight.w500)),
    
      viewHeaderStyle: ViewHeaderStyle(
            backgroundColor: ColorsConsts.blue,
            dayTextStyle: TextStyle(
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.w500),
            dateTextStyle: TextStyle(
                fontSize: 18,
                color: Color(0xFFff5eaea),
               
                fontWeight: FontWeight.w500)),
    view: CalendarView.month,
   // dataSource: MeetingDataSource(_getDataSource()),
    monthViewSettings: MonthViewSettings(
        appointmentDisplayMode: MonthAppointmentDisplayMode.appointment),
  )   ),
    );
        
  }}
  List<Meeting> _getDataSource() {
  final List<Meeting> meetings = <Meeting>[];
  final DateTime today = DateTime.now();
  final DateTime startTime =
      DateTime.now();
  final DateTime endTime = startTime.add(const Duration(hours: 2));
  meetings.add(Meeting(
      'Conference', startTime, endTime, const Color(0xFF0F8644), false));
  return meetings;
}
class Meeting {
  Meeting(this.eventName, this.from, this.to, this.background, this.isAllDay);

  String eventName;
  DateTime from;
  DateTime to;
  Color background;
  bool isAllDay;
}
class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Meeting> source) {
    appointments = source;
  }

  @override
  DateTime getStartTime(int index) {
    return appointments![index].from;
  }

  @override
  DateTime getEndTime(int index) {
    return appointments![index].to;
  }

  @override
  String getSubject(int index) {
    return appointments![index].eventName;
  }

  @override
  Color getColor(int index) {
    return appointments![index].background;
  }

  @override
  bool isAllDay(int index) {
    return appointments![index].isAllDay;
  }
}
