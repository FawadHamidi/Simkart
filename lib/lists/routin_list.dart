import 'package:flutter/material.dart';
import 'package:simkart/roshan.dart';
import 'package:simkart/utilis/afcc.dart';
import 'package:simkart/utilis/bundlelist.dart';
import 'package:simkart/utilis/etisalat.dart';
import 'package:simkart/utilis/mtn.dart';
import 'package:simkart/utilis/salaam.dart';
import 'package:simkart/utilis/service_cards.dart';

class RoutinList extends StatefulWidget {
  final Color color;
  final String text;
  final int id;
  RoutinList(this.text, this.color, this.id);

  @override
  _ServiceListState createState() => _ServiceListState();
}

class _ServiceListState extends State<RoutinList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: widget.color,
        elevation: 4.0,
        title: Text(
          widget.text,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView(
        children: [
          ServiceCard('assets/month.png', 'بسته های ماهانه ', () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => BundleList(
                      monthhandler(), widget.color, 'بسته های ماهانه ')),
            );
          }),
          ServiceCard('assets/week.jpg', 'بسته های هفته وار', () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => BundleList(
                      weekhandler(), widget.color, 'بسته های هفته وار')),
            );
          }),
          ServiceCard('assets/day.jpg', 'بسته های روزانه', () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => BundleList(
                      dayhandler(), widget.color, 'بسته های روزانه')),
            );
          }),
          ServiceCard('assets/hourly.jpg', 'بسته های  ساعتوار', () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => BundleList(
                      hourhandler(), widget.color, 'بسته های ساعتوار')),
            );
          }),
          ServiceCard('assets/night.png', 'بسته های شبانه', () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => BundleList(
                      nighthandler(), widget.color, 'بسته های شبانه')),
            );
          }),
          ServiceCard('assets/mix3.png', 'بسته های ترکیبی', () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => BundleList(
                      mixhandler(), widget.color, 'بسته های ترکیبی')),
            );
          }),
        ],
      ),
    );
  }

//methodssss
  monthhandler() {
    if (widget.id == 1) {
      return netmonthHandler();
    } else if (widget.id == 2) {
      return smsmonthHandler();
    }
    if (widget.id == 3)
      return telmonthHandler();
    else if (widget.id == 4) return natiomonthHandler();
  }

  netmonthHandler() {
    if (widget.color == Colors.red)
      return Roshan.roshnetmonth;
    else if (widget.color == Colors.green) {
      return Etisalat.etinetmonth;
    } else if (widget.color == Colors.lightBlueAccent) {
      return Salaam.salnetmonth;
    } else if (widget.color == Colors.amber) {
      return Mtn.mtnnetmonth;
    } else if (widget.color == Colors.blue) return Afcc.afccnetmonth;
  }

  smsmonthHandler() {
    if (widget.color == Colors.red)
      return Roshan.roshsmsmonth;
    else if (widget.color == Colors.green) {
      return Etisalat.etismsmonth;
    } else if (widget.color == Colors.lightBlueAccent) {
      return Salaam.salsmsmonth;
    } else if (widget.color == Colors.amber) {
      return Mtn.mtnsmsmonth;
    } else if (widget.color == Colors.blue) return Afcc.afccsmsmonth;
  }

  telmonthHandler() {
    if (widget.color == Colors.red)
      return Roshan.roshtelmonth;
    else if (widget.color == Colors.green) {
      return Etisalat.etitelmonth;
    } else if (widget.color == Colors.lightBlueAccent) {
      return Salaam.saltelmonth;
    } else if (widget.color == Colors.amber) {
      return Mtn.mtnsmsmonth;
    } else if (widget.color == Colors.blue) return Afcc.afcctelmonth;
  }

  natiomonthHandler() {
    if (widget.color == Colors.red)
      return Roshan.roshnatiomonth;
    else if (widget.color == Colors.green) {
      return Etisalat.etinatiomonth;
    } else if (widget.color == Colors.lightBlueAccent) {
      return Salaam.salnatiomonth;
    } else if (widget.color == Colors.amber) {
      return Mtn.mtnsmsmonth;
    } else if (widget.color == Colors.blue) return Afcc.afccnatiomonth;
  }

  weekhandler() {
    if (widget.id == 1) {
      return netweekHandler();
    } else if (widget.id == 2) {
      return smsweekHandler();
    }
    if (widget.id == 3)
      return telweekHandler();
    else if (widget.id == 4) return natioweekHandler();
  }

  netweekHandler() {
    if (widget.color == Colors.red)
      return Roshan.roshnetweek;
    else if (widget.color == Colors.green) {
      return Etisalat.etinetweek;
    } else if (widget.color == Colors.lightBlueAccent) {
      return Salaam.salnetweek;
    } else if (widget.color == Colors.amber) {
      return Mtn.mtnnetweek;
    } else if (widget.color == Colors.blue) return Afcc.afccnetweek;
  }

  smsweekHandler() {
    if (widget.color == Colors.red)
      return Roshan.roshsmsweek;
    else if (widget.color == Colors.green) {
      return Etisalat.etismsweek;
    } else if (widget.color == Colors.lightBlueAccent) {
      return Salaam.salnetweek;
    } else if (widget.color == Colors.amber) {
      return Mtn.mtnsmsweek;
    } else if (widget.color == Colors.blue) return Afcc.afccsmsweek;
  }

  telweekHandler() {
    if (widget.color == Colors.red)
      return Roshan.roshtelweek;
    else if (widget.color == Colors.green) {
      return Etisalat.etitelweek;
    } else if (widget.color == Colors.lightBlueAccent) {
      return Salaam.saltelweek;
    } else if (widget.color == Colors.amber) {
      return Mtn.mtntelweek;
    } else if (widget.color == Colors.blue) return Afcc.afcctelweek;
  }

  natioweekHandler() {
    if (widget.color == Colors.red)
      return Roshan.roshnatioweek;
    else if (widget.color == Colors.green) {
      return Etisalat.etinatioweek;
    } else if (widget.color == Colors.lightBlueAccent) {
      return Salaam.salnatioweek;
    } else if (widget.color == Colors.amber) {
      return Mtn.mtnnatioweek;
    } else if (widget.color == Colors.blue) return Afcc.afccnatioweek;
  }

  dayhandler() {
    if (widget.id == 1) {
      return netdayHandler();
    } else if (widget.id == 2) {
      return smsdayHandler();
    }
    if (widget.id == 3)
      return teldayHandler();
    else if (widget.id == 4) return natiodayHandler();
  }

  netdayHandler() {
    if (widget.color == Colors.red)
      return Roshan.roshnetday;
    else if (widget.color == Colors.green) {
      return Etisalat.etinetday;
    } else if (widget.color == Colors.lightBlueAccent) {
      return Salaam.salnetday;
    } else if (widget.color == Colors.amber) {
      return Mtn.mtnnetday;
    } else if (widget.color == Colors.blue) return Afcc.afccnetday;
  }

  smsdayHandler() {
    if (widget.color == Colors.red)
      return Roshan.roshsmsday;
    else if (widget.color == Colors.green) {
      return Etisalat.etismsday;
    } else if (widget.color == Colors.lightBlueAccent) {
      return Salaam.salsmsday;
    } else if (widget.color == Colors.amber) {
      return Mtn.mtnsmsday;
    } else if (widget.color == Colors.blue) return Afcc.afccsmsday;
  }

  teldayHandler() {
    if (widget.color == Colors.red)
      return Roshan.roshtelday;
    else if (widget.color == Colors.green) {
      return Etisalat.etitelday;
    } else if (widget.color == Colors.lightBlueAccent) {
      return Salaam.saltelday;
    } else if (widget.color == Colors.amber) {
      return Mtn.mtntelday;
    } else if (widget.color == Colors.blue) return Afcc.afcctelday;
  }

  natiodayHandler() {
    if (widget.color == Colors.red)
      return Roshan.roshnatioday;
    else if (widget.color == Colors.green) {
      return Etisalat.etinatioday;
    } else if (widget.color == Colors.lightBlueAccent) {
      return Salaam.salnatioday;
    } else if (widget.color == Colors.amber) {
      return Mtn.mtnnatioday;
    } else if (widget.color == Colors.blue) return Afcc.afccnatioday;
  }

  hourhandler() {
    if (widget.id == 1) {
      return nethourHandler();
    } else if (widget.id == 2) {
      return smshourHandler();
    }
    if (widget.id == 3)
      return telhourHandler();
    else if (widget.id == 4) return natiohourHandler();
  }

  nethourHandler() {
    if (widget.color == Colors.red)
      return Roshan.roshnethour;
    else if (widget.color == Colors.green) {
      return Etisalat.etinethour;
    } else if (widget.color == Colors.lightBlueAccent) {
      return Salaam.salnethour;
    } else if (widget.color == Colors.amber) {
      return Mtn.mtnnethour;
    } else if (widget.color == Colors.blue) return Afcc.afccnethour;
  }

  smshourHandler() {
    if (widget.color == Colors.red)
      return Roshan.roshsmshour;
    else if (widget.color == Colors.green) {
      return Etisalat.etismshour;
    } else if (widget.color == Colors.lightBlueAccent) {
      return Salaam.salsmshour;
    } else if (widget.color == Colors.amber) {
      return Mtn.mtnsmshour;
    } else if (widget.color == Colors.blue) return Afcc.afccsmshour;
  }

  telhourHandler() {
    if (widget.color == Colors.red)
      return Roshan.roshtelhour;
    else if (widget.color == Colors.green) {
      return Etisalat.etitelhour;
    } else if (widget.color == Colors.lightBlueAccent) {
      return Salaam.saltelhour;
    } else if (widget.color == Colors.amber) {
      return Mtn.mtntelhour;
    } else if (widget.color == Colors.blue) return Afcc.afcctelhour;
  }

  natiohourHandler() {
    if (widget.color == Colors.red)
      return Roshan.roshnatiohour;
    else if (widget.color == Colors.green) {
      return Etisalat.etinatiohour;
    } else if (widget.color == Colors.lightBlueAccent) {
      return Salaam.salnatiohour;
    } else if (widget.color == Colors.amber) {
      return Mtn.mtnnatiohour;
    } else if (widget.color == Colors.blue) return Afcc.afccnatiohour;
  }

  nighthandler() {
    if (widget.id == 1) {
      return netnightHandler();
    } else if (widget.id == 2) {
      return smsnightHandler();
    }
    if (widget.id == 3)
      return telnightHandler();
    else if (widget.id == 4) return nationightHandler();
  }

  netnightHandler() {
    if (widget.color == Colors.red)
      return Roshan.roshnetnight;
    else if (widget.color == Colors.green) {
      return Etisalat.etinetnight;
    } else if (widget.color == Colors.lightBlueAccent) {
      return Salaam.salnetnight;
    } else if (widget.color == Colors.amber) {
      return Mtn.mtnnetnight;
    } else if (widget.color == Colors.blue) return Afcc.afccnetnight;
  }

  smsnightHandler() {
    if (widget.color == Colors.red)
      return Roshan.roshsmsnight;
    else if (widget.color == Colors.green) {
      return Etisalat.etismsnight;
    } else if (widget.color == Colors.lightBlueAccent) {
      return Salaam.salsmsnight;
    } else if (widget.color == Colors.amber) {
      return Mtn.mtnsmsnight;
    } else if (widget.color == Colors.blue) return Afcc.afccsmsnight;
  }

  telnightHandler() {
    if (widget.color == Colors.red)
      return Roshan.roshtelnight;
    else if (widget.color == Colors.green) {
      return Etisalat.etitelnight;
    } else if (widget.color == Colors.lightBlueAccent) {
      return Salaam.saltelnight;
    } else if (widget.color == Colors.amber) {
      return Mtn.mtntelnight;
    } else if (widget.color == Colors.blue) return Afcc.afcctelnight;
  }

  nationightHandler() {
    if (widget.color == Colors.red)
      return Roshan.roshnationight;
    else if (widget.color == Colors.green) {
      return Etisalat.etinationight;
    } else if (widget.color == Colors.lightBlueAccent) {
      return Salaam.salnationight;
    } else if (widget.color == Colors.amber) {
      return Mtn.mtnnationight;
    } else if (widget.color == Colors.blue) return Afcc.afccnationight;
  }

  mixhandler() {
    if (widget.id == 1) {
      return netmixHandler();
    } else if (widget.id == 2) {
      return smsmixHandler();
    }
    if (widget.id == 3)
      return telmixHandler();
    else if (widget.id == 4) return natiomixHandler();
  }

  netmixHandler() {
    if (widget.color == Colors.red)
      return Roshan.roshnetmix;
    else if (widget.color == Colors.green) {
      return Etisalat.etinetmix;
    } else if (widget.color == Colors.lightBlueAccent) {
      return Salaam.salnetmix;
    } else if (widget.color == Colors.amber) {
      return Mtn.mtnnetmix;
    } else if (widget.color == Colors.blue) return Afcc.afccnetmix;
  }

  smsmixHandler() {
    if (widget.color == Colors.red)
      return Roshan.roshsmsmix;
    else if (widget.color == Colors.green) {
      return Etisalat.etismsmix;
    } else if (widget.color == Colors.lightBlueAccent) {
      return Salaam.salsmsmix;
    } else if (widget.color == Colors.amber) {
      return Mtn.mtnsmsmix;
    } else if (widget.color == Colors.blue) return Afcc.afccsmsmix;
  }

  telmixHandler() {
    if (widget.color == Colors.red)
      return Roshan.roshtelmix;
    else if (widget.color == Colors.green) {
      return Etisalat.etitelmix;
    } else if (widget.color == Colors.lightBlueAccent) {
      return Salaam.saltelmix;
    } else if (widget.color == Colors.amber) {
      return Mtn.mtntelmix;
    } else if (widget.color == Colors.blue) return Afcc.afcctelmix;
  }

  natiomixHandler() {
    if (widget.color == Colors.red)
      return Roshan.roshnatiomix;
    else if (widget.color == Colors.green) {
      return Etisalat.etinatiomix;
    } else if (widget.color == Colors.lightBlueAccent) {
      return Salaam.salnatiomix;
    } else if (widget.color == Colors.amber) {
      return Mtn.mtnnatiomix;
    } else if (widget.color == Colors.blue) return Afcc.afccnatiomix;
  }
}
