import 'package:doctordes/consts/const.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import 'drawer.dart';
class CalenderDay extends StatefulWidget {
  const CalenderDay({ Key? key }) : super(key: key);

  @override
  _CalenderDayState createState() => _CalenderDayState();
}

class _CalenderDayState extends State<CalenderDay> {
  // DatePickerController _controller = DatePickerController();
DateTime now = DateTime.now();
// DateTime date = DateTime(year.no, now.month, now.day);

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
            view: CalendarView.week,
            headerStyle: CalendarHeaderStyle(
            textAlign: TextAlign.center,
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
              
                fontWeight: FontWeight.w500)),cellBorderColor: Colors.grey,
              
            allowedViews: [
              CalendarView.day,
              CalendarView.week,
              CalendarView.workWeek,
              CalendarView.timelineDay,
              CalendarView.timelineWeek,
              CalendarView.timelineWorkWeek,
            ],
            dataSource: getCalendarDataSource(),
            specialRegions: _getTimeRegions(),
                  
  //       
          ),
        ),
      );
   
  }

  _DataSource getCalendarDataSource() {
    final List<Appointment> appointments = <Appointment>[];
    appointments.add(Appointment(
      startTime: DateTime.now(),
      endTime: DateTime.now().add(const Duration(hours: 1)),
      subject: 'Meeting',
      color: Colors.pink,
    ));
    appointments.add(Appointment(
      startTime: DateTime.now().add(const Duration(hours: 4)),
      endTime: DateTime.now().add(const Duration(hours: 5)),
      subject: 'Release Meeting',
      color: Colors.lightBlueAccent,
    ));
    appointments.add(Appointment(
      startTime: DateTime.now().add(const Duration(hours: 6)),
      endTime: DateTime.now().add(const Duration(hours: 7)),
      subject: 'Performance check',
      color: Colors.amber,
    ));
    appointments.add(Appointment(
      startTime: DateTime(2020, 1, 22, 1, 0, 0),
      endTime: DateTime(2020, 1, 22, 3, 0, 0),
      subject: 'Support',
      color: Colors.green,
    ));
    appointments.add(Appointment(
      startTime: DateTime(2020, 1, 24, 3, 0, 0),
      endTime: DateTime(2020, 1, 24, 4, 0, 0),
      subject: 'Retrospective',
      color: Colors.purple,
    ));

    return _DataSource(appointments);
  }

  List<TimeRegion> _getTimeRegions() {
    final List<TimeRegion> regions = <TimeRegion>[];
    regions.add(TimeRegion(
      startTime: DateTime(2020, 5, 29, 00, 0, 0),
      endTime: DateTime(2020, 5, 29, 09, 0, 0),
      recurrenceRule: 'FREQ=DAILY;INTERVAL=1',
      color: Color(0xffbD3D3D3),
      enablePointerInteraction: false,
    ));
    regions.add(TimeRegion(
      startTime: DateTime(2020, 5, 29, 18, 0, 0),
      endTime: DateTime(2020, 5, 29, 24, 0, 0),
      recurrenceRule: 'FREQ=DAILY;INTERVAL=1',
      color: Color(0xffbD3D3D3),
      enablePointerInteraction: false,
    ));
    regions.add(TimeRegion(
      startTime: DateTime(2020, 5, 29, 09, 0, 0),
      endTime: DateTime(2020, 5, 29, 18, 0, 0),
      recurrenceRule: 'FREQ=DAILY;INTERVAL=1',
      color: Color(0xffb89cff0),
      enablePointerInteraction: false,
    ));

    return regions;
  }
}

class _DataSource extends CalendarDataSource {
  _DataSource(List<Appointment> source) {
    appointments = source;
  }
}
  //          body:  Container(
  //         child: SfCalendar(
  //            view: CalendarView.workWeek,
          
  //         //  timeSlotViewSettings: TimeSlotViewSettings(
             
  //         //   // timeInterval: Duration(minutes: 60),
  //         //    timeIntervalHeight: 80,  timelineAppointmentHeight: 800,
  //         //    timeFormat: 'h:mm',timeIntervalWidth: 800,
  //         //    dateFormat: 'd',
  //         //    dayFormat: 'EEE',
  //         //    timeRulerSize: 40),
       
       
  //       headerStyle: CalendarHeaderStyle(
  //          // textAlign: TextAlign.center,
  //           backgroundColor: ColorsConsts.blue,
  //           textStyle: TextStyle(
  //               fontSize: 20,
  //               fontStyle: FontStyle.normal,
               
  //               color: ColorsConsts.white,
  //               fontWeight: FontWeight.w500)),
    
  //     viewHeaderStyle: ViewHeaderStyle(
  //           backgroundColor: ColorsConsts.blue,
  //           dayTextStyle: TextStyle(
  //               fontSize: 15,
  //               color: Colors.white,
  //               fontWeight: FontWeight.w500),
  //           dateTextStyle: TextStyle(
  //               fontSize: 18,
  //               color: Color(0xFFff5eaea),
              
  //               fontWeight: FontWeight.w500)),cellBorderColor: Colors.grey,
  //              allowAppointmentResize: true,
  //               appointmentBuilder:appointmentBuilder,
  //              cellEndPadding: 100,
  //               monthViewSettings: MonthViewSettings(appointmentDisplayMode: MonthAppointmentDisplayMode.none) ,
              
  //     ),
  //     ),
  //      ),
  //   );
        
  // }
  // Widget appointmentBuilder(BuildContext context,
  //   CalendarAppointmentDetails calendarAppointmentDetails) {
  // final Appointment appointment =
  //     calendarAppointmentDetails.appointments.first;
  // return Column(
  //   children: [
  //     Container(
  //         width: calendarAppointmentDetails.bounds.width,
  //         height: calendarAppointmentDetails.bounds.height / 2,
  //         color: appointment.color,
  //         child: Center(
  //           child: Icon(
  //             Icons.group,
  //             color: Colors.black,
  //           ),
  //         )),
  //     Container(
  //       width: calendarAppointmentDetails.bounds.width,
  //       height: calendarAppointmentDetails.bounds.height / 2,
  //       color: appointment.color,
  //       child: Text("dedee",style: TextStyle(color:Colors.black)
  //         // appointment.subject +
  //         //     DateFormat(' (hh:mm a').format(appointment.startTime) +
  //         //     '-' +
  //         //     DateFormat('hh:mm a)').format(appointment.endTime),
  //         // textAlign: TextAlign.center,style: TextStyle(fontSize: 10),
  //       ),
  //     )
  //   ],
  // );
// }
//   }