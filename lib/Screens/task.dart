import 'package:doctordes/Screens/taskall.dart';
import 'package:doctordes/Widgets/tasklist.dart';
import 'package:doctordes/consts/const.dart';
import 'package:flutter/material.dart';
class TaskScreen extends StatefulWidget {
  const TaskScreen({ Key? key }) : super(key: key);

  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
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
    return SafeArea(
      child: Scaffold(
        body:SingleChildScrollView(
          child: Column(children: [
            Container(height: height*.14,
           
              child: Card(elevation: 10,
                child: Row(
                  children: [
                    Container(height: 60,width: 80,padding: EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                      child: Image.asset('assets/s1.jpg',fit: BoxFit.cover,)),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:30,top: 10),
                        child: Text('Amir Khan',
                        style: TextStyle(color: Colors.red[900],fontSize: 21,
                        fontWeight: FontWeight.bold
                        ),),
                      ),
                      Padding(
                         padding: const EdgeInsets.only(left:38,top: 5),
                        child: Row(
                          children: [
                            Text('Male ', style: TextStyle( fontWeight: FontWeight.bold),),
                            Container(width: 1,height: 10,color: ColorsConsts.black,),
                            Text(' 18 years', style: TextStyle( fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                      Padding(
                      padding: const EdgeInsets.only(left:48,top: 5),
                        child: Text('Pain in Abdomen', style: TextStyle( fontWeight: FontWeight.bold),),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:68,top: 5),
                    child: Container(
                      alignment: Alignment.topRight,
                      child: Text('New', style: TextStyle(color: Colors.red[900],fontSize: 16,fontWeight: FontWeight.bold),)),
                  )
                  ],
                ),
              ),
            ),
            SizedBox(height: height*.08,width: width,
            child: Row(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height:height*.06,width: 50,
                  child: Card(elevation: 10,child: Padding(
                   padding: const EdgeInsets.only(bottom:10,),
                    child: IconButton(onPressed: (){}, icon: Icon(Icons.share,color: Colors.red[900],)),
                  ))),
                   SizedBox(height:height*.06,width: 50,
                  child: Card(child: Padding(
                   padding: const EdgeInsets.only(bottom:10,),
                    child: IconButton(onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>TaskAllScreen()));
                    }, icon: Icon(Icons.share,color: Colors.red[900],)),
                  ))),
              ],
            ),
            ),
            TaskList()
        
          ],),
        ) ,
        
      ),
    );
  }
}