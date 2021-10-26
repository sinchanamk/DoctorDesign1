import 'package:doctordes/Screens/patient.dart';
import 'package:doctordes/consts/const.dart';
import 'package:flutter/material.dart';
class Older extends StatefulWidget {
  @override
  State<Older> createState() => _OlderState();
}

class _OlderState extends State<Older> {
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
        ListView.builder(itemCount: 4,shrinkWrap: true,
        controller: _scrollController,physics: NeverScrollableScrollPhysics(),
        itemBuilder:(context,index){
        
        return Container(height:height*.12,
          child: Card(elevation: 20,
            child:Row(
              children: [
                Column(
                  children: [
                    Padding(
                       padding:  EdgeInsets.only(top:10,right: 10),
                      child: Text('Last Visit',style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(left:17.0),
                          child: Text('14-jun-20',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                        ),
                        IconButton(onPressed: (){}, icon: Icon(Icons.message_rounded,color: Colors.red,))
                      ],
                    ),

                  ],
                ),
CircleAvatar(radius:35,backgroundImage: AssetImage('assets/s2.jpg')),

Padding(
  padding:  EdgeInsets.only(top:12.0,),
  child:   Column(children: [
  
    Text('Ranveer',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
  
  Row(children: [
  
    Padding(
      padding: const EdgeInsets.all(5.0),
      child: Text('Male',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
    ),
  
    Container(width: 2,color: ColorsConsts.black,),
  
    Text('34yrs',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),)
  
  ],),
  
  Padding(
    padding: const EdgeInsets.only(left:5.0),
    child: Text('Pain in Abdomen',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
  )
  
  ],),
),
SizedBox(width: 5,),
IconButton(onPressed: (){
  Navigator.push(context, MaterialPageRoute(builder: (context)=>PatientScreen()));
}, icon:Icon(Icons.arrow_forward_ios,color: Colors.red,))
              ],
            ),


          
          ),
        );} ,

  ),
      ],
    );
  }
}