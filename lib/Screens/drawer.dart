import 'package:doctordes/consts/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Profile1 extends StatefulWidget {
  const Profile1({Key? key}) : super(key: key);

  @override
  _Profile1State createState() => _Profile1State();
}

class _Profile1State extends State<Profile1> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

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
      child: Drawer(
          child: SingleChildScrollView(
              child: Column(children: [
        Container(
          height: 70,
          color: ColorsConsts.blue,
          child:
              Row( children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                alignment: Alignment.center,
                child: const CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/s.jpg'),
                ),
              ),
            ),
            Text(
              'Dr. Jennifer',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: ColorsConsts.white),
            ),
            Padding(
              padding:  EdgeInsets.only(left:78.0),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.close,
                  size: 25,
                  color: ColorsConsts.white,
                ),
              ),
            )
          ]),
        ),
        Column(children: [
          Padding(
            padding: const EdgeInsets.only(left: 18.0, top: 10, right: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Text(
                    'Profile',
                    style: TextStyle(
                        fontSize: 16,
                        color: ColorsConsts.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, top: 10, right: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Text(
                    'Change Password',
                    style: TextStyle(
                        fontSize: 16,
                        color: ColorsConsts.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, top: 10, right: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Text(
                    'Notification',
                    style: TextStyle(
                        fontSize: 16,
                        color: ColorsConsts.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, top: 10, right: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Text(
                    'Allow Access',
                    style: TextStyle(
                        fontSize: 16,
                        color: ColorsConsts.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, top: 10, right: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Text(
                    'About',
                    style: TextStyle(
                        fontSize: 16,
                        color: ColorsConsts.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
          ),
        ])
      ]))),
    );
  }
}
