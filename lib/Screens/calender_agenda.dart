import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:doctordes/Widgets/calender_event.dart';
import 'package:doctordes/Widgets/pending.dart';
import 'package:doctordes/consts/const.dart';
import 'package:flutter/material.dart';

import 'drawer.dart';
class CalenderScreen extends StatefulWidget {
  const CalenderScreen({ Key? key }) : super(key: key);

  @override
  _CalenderScreenState createState() => _CalenderScreenState();
}

class _CalenderScreenState extends State<CalenderScreen> {
  DatePickerController _controller = DatePickerController();

  DateTime _selectedValue = DateTime.now();
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
    return Scaffold(  key: _scaffoldKey,  drawer: Profile1(),
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
       body: SingleChildScrollView(
         child: Column(
           children: [
              Container(
                color: ColorsConsts.blue,
                height:height*.11 ,
                child:  DatePicker(
          DateTime.now(),dateTextStyle:TextStyle(color: ColorsConsts.white) ,
          controller: _controller,
          dayTextStyle:TextStyle(color: ColorsConsts.white,fontSize: 11) ,
          initialSelectedDate: DateTime.now(),
          selectionColor: Colors.white,
          selectedTextColor: ColorsConsts.blue,
          deactivatedColor: ColorsConsts.white,
          monthTextStyle:TextStyle(color: ColorsConsts.blue) ,
          onDateChange: (date) {
            // New date selected
            setState(() {
            _selectedValue = date;
            });
          },
             ),
              ),
             Container(padding: EdgeInsets.only(right: 60,top: 10,bottom: 10),
          child: Text('Today date is:  ${_selectedValue}',
          style: TextStyle(color: Colors.red[400],fontWeight: FontWeight.bold),)),
            CalenderEvent(),
              Container(height: height*.05,width: 1500,color: Colors.grey[300],
               padding: EdgeInsets.only(right: 50,top: 10,bottom: 10,left: 20),
          child: Text('Sunday, 24 October',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
             Container(height: height*.08,width: 1500,
               padding: EdgeInsets.only(right: 50,top: 20,bottom: 20,left: 20),
          child: Text('No Events',style: TextStyle(color: ColorsConsts.black1,fontWeight: FontWeight.bold),)),
             Container(height: height*.05,width: 1500,color: Colors.grey[300],
               padding: EdgeInsets.only(right: 50,top: 10,bottom: 10,left: 20),
          child: Text('Sunday, 25 October',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
            CalenderEvent(),
             Container(height: height*.05,width: 1500,color: Colors.grey[300],
               padding: EdgeInsets.only(right: 50,top: 10,bottom: 10,left: 20),
          child: Text('Sunday, 26 October',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
             Container(height: height*.08,width: 1500,
               padding: EdgeInsets.only(right: 50,top: 20,bottom: 20,left: 20),
          child: Text('No Events',style: TextStyle(color: ColorsConsts.black1,fontWeight: FontWeight.bold),)),
           Container(height: height*.05,width: 1500,color: Colors.grey[300],
               padding: EdgeInsets.only(right: 50,top: 10,bottom: 10,left: 20),
          child: Text('Sunday, 27 October',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
             Container(height: height*.08,width: 1500,
               padding: EdgeInsets.only(right: 50,top: 20,bottom: 20,left: 20),
          child: Text('No Events',style: TextStyle(color: ColorsConsts.black1,fontWeight: FontWeight.bold),)), ],
         ),
       ),
        );
  }}