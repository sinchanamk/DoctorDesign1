import 'package:doctordes/Widgets/completed.dart';
import 'package:doctordes/Widgets/older.dart';
import 'package:doctordes/Widgets/pending.dart';
import 'package:doctordes/consts/const.dart';
import 'package:flutter/material.dart';
class SearchTab extends StatefulWidget {
//  const SearchResult({ Key? key }) : super(key: key);

  @override
  _SearchTabState createState() => _SearchTabState();
}

class _SearchTabState extends State<SearchTab> {
  ScrollController _scrollController = ScrollController();
   double width = 0.0;
  double height = 0.0;
     Widget appBarTitle =  Text("Patients",style: TextStyle(color: Colors.white,fontSize: 15),);
  Icon actionIcon = new Icon(Icons.search);
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
        appBar: AppBar(toolbarHeight: height*.1,
          
          flexibleSpace:    Container(color: ColorsConsts.blue,
               height:height*.1,width: width,
               child:
                   Padding(
                     padding: const EdgeInsets.only(right:18.0,top: 10,left: 18),
                     child: TextFormField(
                           
                           
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
                           ),
                   ), ),),
       body: SingleChildScrollView(
         child: Column(
           children: [
          
           Padding(
             padding: const EdgeInsets.all(18.0),
             child: Container(alignment: Alignment.topLeft,
               child: Text('Pending today',style: TextStyle(fontWeight: FontWeight.bold),)),
           ),
           PendingTab(),
            Padding(
             padding: const EdgeInsets.all(18.0),
             child: Container(alignment: Alignment.topLeft,
               child: Text('Completed today',style: TextStyle(fontWeight: FontWeight.bold),)),
           ),
           CompletedTab(),
          
            Padding(
             padding: const EdgeInsets.all(18.0),
             child: Container(alignment: Alignment.topLeft,
               child: Text('Old Patients',style: TextStyle(fontWeight: FontWeight.bold),)),
           ),
           Older(),
           ],
         ),
       ),
        
      ),
    );
  }
}