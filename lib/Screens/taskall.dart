import 'package:doctordes/Widgets/tasklist.dart';
import 'package:doctordes/consts/const.dart';
import 'package:flutter/material.dart';
class TaskAllScreen extends StatefulWidget {
  const TaskAllScreen({ Key? key }) : super(key: key);

  @override
  _TaskAllScreenState createState() => _TaskAllScreenState();
}

class _TaskAllScreenState extends State<TaskAllScreen> {
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
                    child: IconButton(onPressed: (){}, icon: Icon(Icons.share,color: Colors.red[900],)),
                  ))),
                    SizedBox(height:height*.06,width: 50,
                  child: Card(child: Padding(
                   padding: const EdgeInsets.only(bottom:10,),
                    child: IconButton(onPressed: (){}, icon: Icon(Icons.share,color: Colors.red[900],)),
                  ))),
              ],
            ),
            ),
          Container(height:height*.06,width:width,decoration: BoxDecoration(color: ColorsConsts.white2),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text('Allergies'),
              ),
              IconButton(onPressed: (){}, icon: Icon(Icons.edit))
            ],
          ),),
            Container(height:height*.06,width:width,
        child: Padding(
          padding: EdgeInsets.only(left: 20),
          child: Row(
            children: [
              Text('Pencillin '),
              Container(width: 1,height: 10,color: ColorsConsts.black,),
              Text(' Allergies'),
            ],
          ),
        ),),
        Container(height:height*.06,width:width,decoration: BoxDecoration(color: ColorsConsts.white2),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text('Diagnosis'),
              ),
              IconButton(onPressed: (){}, icon: Icon(Icons.edit))
            ],
          ),),
            Container(height:height*.06,width:width,
        child: Padding(
          padding: EdgeInsets.only(left: 20),
          child: Row(
            children: [
              Text('Epigastric Pain '),
              Container(width: 1,height: 10,color: ColorsConsts.black,),
              Text(' Recorded 29-may-2021'),
            ],
          ),
        ),),  Container(height:height*.06,width:width,
        child: Padding(
          padding: EdgeInsets.only(left: 20),
          child: Row(
            children: [
              Text('Asthma '),
              Container(width: 1,height: 10,color: ColorsConsts.black,),
              Text(' Recorded 29-jul-2021'),
            ],
          ),
        ),),
         Container(height:height*.06,width:width,decoration: BoxDecoration(color: ColorsConsts.white2),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text('Vitals'),
              ),
              IconButton(onPressed: (){}, icon: Icon(Icons.edit))
            ],
          ),),
          Padding(
            padding: EdgeInsets.only(left: 20,top: 15),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Height"),
                Text("165cm")
              ],
            ),
          ),
          Divider(color: ColorsConsts.black2,),
           Padding(
            padding: EdgeInsets.only(left: 20,top: 15),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Weight"),
                Text("78kg")
              ],
            ),
          ),  Divider(color: ColorsConsts.black2,),
           Padding(
            padding: EdgeInsets.only(left: 20,top: 15),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("BMI"),
                Text("29.12")
              ],
            ),
          ),  Divider(color: ColorsConsts.black2,),
            Padding(
            padding: EdgeInsets.only(left: 20,top: 15),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Blood Pressure"),
                Text("145/98 MG")
              ],
            ),
          ), Divider(color: ColorsConsts.black2,),
          ],),
        ) ,
        
      ),
    );
  }
}