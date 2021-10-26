import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:doctordes/Screens/calender_agenda.dart';
import 'package:doctordes/Screens/calender_day.dart';
import 'package:doctordes/Screens/calender_month.dart';
import 'package:doctordes/consts/const.dart';
import 'package:flutter/material.dart';

import 'drawer.dart';
class CalenderPage extends StatefulWidget {
  const CalenderPage({ Key? key }) : super(key: key);

  @override
  _CalenderPageState createState() => _CalenderPageState();
}

class _CalenderPageState extends State<CalenderPage> {
  DatePickerController _controller = DatePickerController();
var color;
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
      title:
          Center(child: Text('Calender')),
      
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
          daysCount: 7,
      
          onDateChange: (date) {
            // New date selected
            setState(() {
            _selectedValue = date;
            color= ColorsConsts.blue;
            });
          },
             ),
              ),
             
              InkWell(onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>CalenderScreen()));
              },
                child: Container(height:height*.081,width: width, padding: EdgeInsets.only(left: 20,),
                alignment: Alignment.center,
                     decoration: BoxDecoration(
                  border: Border.all(color: ColorsConsts.white2),),
                  child:Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Agenda'),
                  
                IconButton(onPressed: (){}, icon: Icon(Icons.done,color: ColorsConsts.black2,)),  ],
                  ),
                ),
              ),
      InkWell(onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>CalenderDay()));
      },
        child: Container(height:height*.081,width: width,  padding: EdgeInsets.only(left: 20,),
                alignment: Alignment.center,
         decoration: BoxDecoration(
          border: Border.all(color: ColorsConsts.white2),),
          child:Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Day'),
           IconButton(onPressed: (){}, icon: Icon(Icons.done,color: ColorsConsts.black2,)),
        ],
          ),
        ),
      ),
     InkWell(onTap: (){
       Navigator.push(context,MaterialPageRoute(builder: (context)=>CalenderMonth()));
     },
       child: Container(height:height*.081,width: width,  padding: EdgeInsets.only(left: 20,),
                alignment: Alignment.center,
       
         decoration: BoxDecoration(
         border: Border.all(color: ColorsConsts.white2),),
         child:Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Month'),
           IconButton(onPressed: (){}, icon: Icon(Icons.done,color: ColorsConsts.black2,)),
        ],
         ),
       ),
     ),           
              ])));}}
