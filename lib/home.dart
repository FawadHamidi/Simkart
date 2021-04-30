import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'cards.dart';
import 'lists/service_list.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 14.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        ' سیمکارت | SIMKART',
                        style: TextStyle(
                            fontSize: 30.0, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    CircleAvatar(
                        child: GestureDetector(
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Dialog(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Image.asset(
                                              'assets/aa.webp',
                                              scale: 7,
                                            ),
                                            Text(
                                              'سیمکارت',
                                              style: TextStyle(
                                                  fontSize: 30.0,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text('نسخه 1.0.0'),
                                            Text(
                                              'خدمات سیمکارتهای افغانستان',
                                              style: TextStyle(fontSize: 16.0),
                                            ),
                                            Text(
                                              'ساخته شده توسط فواد احمد (حمیدی)',
                                              style: TextStyle(fontSize: 16.0),
                                            ),
                                            Text(
                                              ' واتساپ : 919067668015+',
                                              style: TextStyle(fontSize: 16.0),
                                            ),
                                            Text(
                                              'ایمیل : fawadhamidy41@gmail.com',
                                              style: TextStyle(fontSize: 16.0),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  });
                            },
                            child: Icon(Icons.info_outline)),
                        radius: 20.0,
                        foregroundColor: Colors.black38,
                        backgroundColor: Colors.white)
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    Image.asset('assets/qq-01.png', scale: 5),
                    SizedBox(
                      height: 14.0,
                    ),
                    ReusableCard(Icons.sim_card, 'روشن', Colors.red, () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  ServiceList(Colors.red, 'Roshan | روشن')));
                    }, 'Roshan'),
                    ReusableCard(Icons.sim_card, 'اتصالات', Colors.green, () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ServiceList(
                                  Colors.green, 'Etisalat | اتصالات ')));
                    }, 'Etisalat'),
                    ReusableCard(Icons.sim_card, 'سلام', Colors.lightBlueAccent,
                        () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ServiceList(
                                  Colors.lightBlueAccent, 'Salaam | سلام')));
                    }, 'Salaam'),
                    ReusableCard(Icons.sim_card, 'ام تی ان', Colors.amber, () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  ServiceList(Colors.amber, 'MTN | ام تی ان')));
                    }, 'MTN'),
                    ReusableCard(Icons.sim_card, 'افغان بیسیم', Colors.blue,
                        () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ServiceList(
                                  Colors.blue, 'AWCC | افغان بیسیم')));
                    }, 'AFCC'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
