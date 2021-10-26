import 'package:doctordes/consts/const.dart';
import 'package:flutter/material.dart';
class NotificationScreen extends StatefulWidget {
  const NotificationScreen({ Key? key }) : super(key: key);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
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
      child: Scaffold(appBar: AppBar(backgroundColor: ColorsConsts.white,
      centerTitle: true,elevation: 0,
        title: Text('Notification',style: TextStyle(color: ColorsConsts.black,fontSize: 25),),),
        body: Column(
          children: [
          Row(
            children: [
              Container(height:height*.13,width: width*.59,
         
                child: Card(color: ColorsConsts.white2,
                  child: 
                      Column(
                        children: [
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 5.0,top: 10),
                                child: Text('Booking',style: TextStyle(color: Colors.red[900],fontWeight: FontWeight.bold)),
                              ),
                              Padding(
                                 padding: const EdgeInsets.only(right: 8.0,top: 10),
                                child: Text('10.45',style: TextStyle(color: Colors.red[900],fontWeight: FontWeight.bold)),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0,top: 5),
                            child: Text('Consultation booked for patient'),
                          ),
                          Padding(
                           padding: const EdgeInsets.only(right: 120,top: 5),
                            child: Text('19-may-2021'),
                          )
                        ],
                      ),),
                ),
                 Container(height:height*.13,width: width*.21,
            child: Card(color: ColorsConsts.white2,
              child:Column(
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.message_sharp,color: Colors.blue,)),
                  Text('Mark Read',style: TextStyle(fontSize: 10),),
                ],
              ) ,
            ),
          ),
          Container(height:height*.13,width: width*.20,
            child: Card(color: ColorsConsts.white2,
              child:Column(
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.delete,color: Colors.black,)),
                  Text('Delete',style: TextStyle(fontSize: 10)),
                ],
              ) ,
            ),
          ),
            ],
          ),
          Container(height:height*.13,width: width,
         
                child: Card(color: ColorsConsts.white2,
                  child: 
                      Column(
                        children: [
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 3.0,top: 10),
                                child: Text('New Upgrade Available',style: TextStyle(color: Colors.red[900],fontWeight: FontWeight.bold)),
                              ),
                              Padding(
                                 padding: const EdgeInsets.only(right: 8.0,top: 10),
                                child: Text('10.45',style: TextStyle(color: Colors.red[900],fontWeight: FontWeight.bold)),
                              )
                            ],
                          ),
                            Padding(
                            padding: const EdgeInsets.only(right: 130,top: 5),
                            child: Text('New version of the app is available'),
                          ),
                          Padding(
                           padding: const EdgeInsets.only(right: 260,top: 5),
                            child: Text('19-may-2021'),
                          )
          ],
        ),
        
      ),
    ),
   Container(height:height*.13,width: width,
         
                child: Card(color: ColorsConsts.white2,
                  child: 
                      Column(
                        children: [
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 3.0,top: 10),
                                child: Text('New Upgrade Available',style: TextStyle(color: Colors.red[900],fontWeight: FontWeight.bold)),
                              ),
                              Padding(
                                 padding: const EdgeInsets.only(right: 8.0,top: 10),
                                child: Text('10.45',style: TextStyle(color: Colors.red[900],fontWeight: FontWeight.bold)),
                              )
                            ],
                          ),
                            Padding(
                            padding: const EdgeInsets.only(right: 130,top: 5),
                            child: Text('New version of the app is available'),
                          ),
                          Padding(
                           padding: const EdgeInsets.only(right: 260,top: 5),
                            child: Text('19-may-2021'),
                          )
          ],
        ),
        
      ),
    ),
    Container(height:height*.13,width: width,
         
                child: Card(color: ColorsConsts.white2,
                  child: 
                      Column(
                        children: [
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 3.0,top: 10),
                                child: Text('New Upgrade Available',style: TextStyle(color: Colors.red[900],fontWeight: FontWeight.bold)),
                              ),
                              Padding(
                                 padding: const EdgeInsets.only(right: 8.0,top: 10),
                                child: Text('10.45',style: TextStyle(color: Colors.red[900],fontWeight: FontWeight.bold)),
                              )
                            ],
                          ),
                            Padding(
                            padding: const EdgeInsets.only(right: 130,top: 5),
                            child: Text('New version of the app is available'),
                          ),
                          Padding(
                           padding: const EdgeInsets.only(right: 260,top: 5),
                            child: Text('19-may-2021'),
                          )
          ],
        ),
        
      ),
    ),
    Container(height:height*.13,width: width,
         
                child: Card(color: ColorsConsts.white2,
                  child: 
                      Column(
                        children: [
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 3.0,top: 10),
                                child: Text('New Upgrade Available',style: TextStyle(color: Colors.red[900],fontWeight: FontWeight.bold)),
                              ),
                              Padding(
                                 padding: const EdgeInsets.only(right: 8.0,top: 10),
                                child: Text('10.45',style: TextStyle(color: Colors.red[900],fontWeight: FontWeight.bold)),
                              )
                            ],
                          ),
                            Padding(
                            padding: const EdgeInsets.only(right: 130,top: 5),
                            child: Text('New version of the app is available'),
                          ),
                          Padding(
                           padding: const EdgeInsets.only(right: 260,top: 5),
                            child: Text('19-may-2021'),
                          )
          ],
        ),
        
      ),
    ) 
    
    ])));
  }
}