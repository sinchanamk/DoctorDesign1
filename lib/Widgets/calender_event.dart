import 'package:doctordes/Screens/calenderpage.dart';
import 'package:doctordes/Screens/patient.dart';
import 'package:doctordes/consts/const.dart';
import 'package:flutter/material.dart';
class CalenderEvent extends StatefulWidget {
  @override
  State<CalenderEvent> createState() => _CalenderEventState();
}

class _CalenderEventState extends State<CalenderEvent> {
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
   
  
    return
     Column(
      children: [
        ListView.builder(itemCount: 2,shrinkWrap: true,
        controller: _scrollController,physics: NeverScrollableScrollPhysics(),
        itemBuilder:(context,index){
        
        return Container(height:height*.12,
       decoration: BoxDecoration(
    border: Border.all(color: ColorsConsts.white2)
  ),
          child: Row(
            children: [
              Column(
                children: [
                  Padding(
                     padding:  EdgeInsets.only(top:10),
                    child: Text('11.30 AM',style: TextStyle(fontWeight: FontWeight.bold,color: ColorsConsts.black1),),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(left:27.0),
                        child: Text('30 min',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: ColorsConsts.black1),),
                      ),
                      IconButton(onPressed: (){}, icon: Icon(Icons.people_outline_sharp,color: Colors.red,))
                    ],
                  ),

                ],
              ),
CircleAvatar(radius:35,backgroundImage: AssetImage('assets/s3.jpg')),
SizedBox(width: 10,),
Padding(
  padding:  EdgeInsets.only(top:12.0),
  child:   Column(children: [
  
    Text('Rachitha ram',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: ColorsConsts.black1),),
  
  Row(children: [
  
    Padding(
      padding: const EdgeInsets.all(5.0),
      child: Text('Female',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: ColorsConsts.black1,),),
    ),
  
    Container(width: 1,height:10,color: ColorsConsts.black,),
  
    Text(' 23yrs',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: ColorsConsts.black1,),)
  
  ],),
  
  Padding(
    padding: const EdgeInsets.only(left:5.0),
    child: Text('Fever',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: ColorsConsts.black1),),
  )
  
  ],),
),
SizedBox(width: 10,),

  IconButton(onPressed: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>CalenderPage()));
  }, icon:Icon(Icons.arrow_forward_ios,color: Colors.red,))

            ],
          ),
          
        );} ,

  ),
      ],
    );
  }
}