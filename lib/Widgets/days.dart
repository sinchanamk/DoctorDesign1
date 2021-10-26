import 'package:doctordes/consts/const.dart';
import 'package:flutter/material.dart';
class DayScreen extends StatelessWidget {
  const DayScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
             children: [
                Container(
                  color: ColorsConsts.blue,
                  height:50 ,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Row(
                      children: [
                      
                        Text('M',style: TextStyle(color: ColorsConsts.white,fontSize: 20),),
                        SizedBox(width: 35,),
                        Text('T',style: TextStyle(color: ColorsConsts.white,fontSize: 20),),
                        SizedBox(width: 35,),
                        Text('W',style: TextStyle(color: ColorsConsts.white,fontSize: 20),),
                        SizedBox(width: 35,), 
                      Text('T',style: TextStyle(color: ColorsConsts.white,fontSize: 20),),
                        SizedBox(width: 35,),
                      Text('F',style: TextStyle(color: ColorsConsts.white,fontSize: 20),),
                        SizedBox(width: 35,),
                        Text('S',style: TextStyle(color: ColorsConsts.white,fontSize: 20),),
                        SizedBox(width: 35,),
                         Text('S',style: TextStyle(color: ColorsConsts.white,fontSize: 20),),
                        SizedBox(width: 35,),
                      ],
                    ),

                  ),

        ),
        Container(
                  color: Colors.grey[400],
                  height:50 ,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Row(
                      children: [
                      
                        Text('8',style: TextStyle(color: ColorsConsts.black,fontSize: 20),),
                        SizedBox(width: 33,),
                        Text('9',style: TextStyle(color: ColorsConsts.black,fontSize: 20),),
                        SizedBox(width: 31,),
                        Text('10',style: TextStyle(color: ColorsConsts.black,fontSize: 18),),
                        SizedBox(width: 32,), 
                      Text('11',style: TextStyle(color: ColorsConsts.black,fontSize: 18),),
                        SizedBox(width: 30,),
                      Text('12',style: TextStyle(color: ColorsConsts.black,fontSize: 18),),
                        SizedBox(width: 30,),
                       Container(height: 30,width: 30,
                          decoration: BoxDecoration(color: Colors.red[900],
                         borderRadius: BorderRadius.circular(10),) ,
                          child: Text('13',style: TextStyle(color: ColorsConsts.black,fontSize: 18),)),
                        SizedBox(width: 30,),
                         Text('14',style: TextStyle(color: ColorsConsts.black,fontSize: 18),),
                        SizedBox(width: 27,),
                      ],
                    ),

                  ),

        ),
        
        ]),
      ),
    );
  }
}