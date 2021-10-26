import 'package:doctordes/Screens/calender_agenda.dart';
import 'package:doctordes/Screens/calenderpage.dart';
import 'package:doctordes/consts/const.dart';
import 'package:flutter/material.dart';

class CompletedTab extends StatefulWidget {
  @override
  State<CompletedTab> createState() => _CompletedTabState();
}

class _CompletedTabState extends State<CompletedTab> {
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
          itemCount: 4,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Container(
              height: height * .12,
              child: Card(
                elevation: 20,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            '11.30 AM',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 17.0),
                              child: Text(
                                '30 min',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.people_outline_sharp,
                                  color: Colors.red,
                                ))
                          ],
                        ),
                      ],
                    ),
                    CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage('assets/s.jpg')),
                    SizedBox(
                      width: 15,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 12.0),
                      child: Column(
                        children: [
                          Text(
                            'Soniya patel',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  'Female',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                width: 4,
                                color: ColorsConsts.black,
                              ),
                              Text(
                                '23yrs',
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(.0),
                            child: Text(
                              'Fever',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        // Padding(
                        //   padding: const EdgeInsets.only(top:8.0),
                        //   child: Text('New',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
                        // ),
                        SizedBox(
                          height: 15,
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CalenderPage()));
                            },
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.red,
                            ))
                      ],
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
