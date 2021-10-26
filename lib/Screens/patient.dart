import 'package:doctordes/Screens/search.dart';
import 'package:doctordes/Widgets/completed.dart';
import 'package:doctordes/Widgets/pending.dart';
import 'package:doctordes/consts/const.dart';
import 'package:flutter/material.dart';

import 'drawer.dart';
class PatientScreen extends StatefulWidget {
  const PatientScreen({ Key? key }) : super(key: key);

  @override
  _PatientScreenState createState() => _PatientScreenState();
}

class _PatientScreenState extends State<PatientScreen>with TickerProviderStateMixin  {
  double width = 0.0;
  double height = 0.0;
    Widget appBarTitle =  Text("Patients",style: TextStyle(color: Colors.white,fontSize: 15),);
  Icon actionIcon = new Icon(Icons.search);
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(
      initialIndex: 0,
      length: 2,
      vsync: this,
    );
  }
  @override
  void didChangeDependencies() {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    super.didChangeDependencies();
  }
  
  
  @override
  Widget build(BuildContext context) {
    TabController tabController =  TabController(length: 2, vsync: this);
  
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
    
        drawer: Profile1(),
        backgroundColor: ColorsConsts.white,
    
        appBar: AppBar(
          title: appBarTitle,
          
          elevation: 0,
          backgroundColor: ColorsConsts.blue,
         centerTitle: true,
          leading: Builder(
            builder: (context) => GestureDetector(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
                child: Padding(
               padding: EdgeInsets.only(
                  right: 10.0,bottom: 10),
                  child: Icon(
                    Icons.menu,
                    color: ColorsConsts.white,
                    size: 30,
                  ),
                )),
          ),
           actions: <Widget>[
           IconButton(icon: actionIcon,onPressed:(){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>
                       SearchTab()));
          setState(() {
                     if ( this.actionIcon.icon == Icons.search){
                      this.actionIcon = new Icon(Icons.close);
                      this.appBarTitle = TextFormField(
                           
                           
                               style: TextStyle(color: Colors.green),
          decoration:  InputDecoration(  prefixIcon:Icon(Icons.search),
            fillColor: Colors.white,  
            border: InputBorder.none,
            focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      borderSide: BorderSide(color: Colors.blue)),
            filled: true,
            // contentPadding:
            //       EdgeInsets.only(bottom: 10.0, left: 10.0, right: 10.0),
            hintText: 'search',
          ),
                           );}
                      else {
                        this.actionIcon = new Icon(Icons.search);
                        this.appBarTitle = new Text("Patients");
                      }
          });})],
          automaticallyImplyLeading: false,
        toolbarHeight: height*.08,
         bottom: TabBar(
                       unselectedLabelColor: Colors.black,
                       labelColor: Colors.white,
                       labelStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                       tabs: [
                         Tab(
                           text: 'Pending(4)',
                         ),
                         Tab(
                           text: 'Completed(3)',
                         )
                       ],
                       controller: tabController,
                       indicatorColor: Colors.white,
                       indicatorSize: TabBarIndicatorSize.tab,
                       unselectedLabelStyle:TextStyle(color: Colors.black,fontWeight: FontWeight.bold) ,
                     
                     ),
                    
             ),
      body:TabBarView(
                      controller: tabController,
              children: [
             PendingTab(),
             CompletedTab()
              // _myListView(),
                        
                        ]
                    ),
              
               
        
          
        ));
  }
}