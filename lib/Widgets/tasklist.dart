import 'package:doctordes/Screens/calender_agenda.dart';
import 'package:doctordes/Screens/calenderpage.dart';
import 'package:doctordes/consts/const.dart';
import 'package:flutter/material.dart';

class TaskList extends StatefulWidget {
  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  ScrollController _scrollController = ScrollController();
  double width = 0.0;
  double height = 0.0;
  @override
  void didChangeDependencies() {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
          controller: _scrollController,
          itemCount: 8,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Container(
              height: height * .12,
              // decoration: BoxDecoration(border: Border.all(color: ColorsConsts.black2)),
              child: Card(child:ExpansionTile(title: Text('Allergies'),
            trailing: IconButton(onPressed: (){

            }, icon: Icon(Icons.arrow_forward_ios),
            ),
          children: [Column(children: [
    _buildExpandableContent(),
          ]
            ),
          
            
          ])));
            
           
          },
        ),
      ],
    );
  }
   _buildExpandableContent() {
   
    return
      Column(
        children: [
          Container(height: 110,width: 500,
            child: const ListTile(
                title:  Text('Hello', style:  TextStyle(fontSize: 6.0),),
                leading:  Icon(Icons.arrow_forward_ios),),
          ),
        ],
      );
        
        
     
  }
  // class Diagnostic{
    
  // }
}
