import 'package:flutter/material.dart';
import 'package:simkart/utilis/khadamat_model.dart';
import 'package:url_launcher/url_launcher.dart';

class KhadamatList extends StatefulWidget {
  final List<KhadamatModel> khadamatlist;
  final String text;
  final Color color;

  KhadamatList(this.khadamatlist, this.text, this.color);

  @override
  _KhadamatListState createState() => _KhadamatListState();
}

class _KhadamatListState extends State<KhadamatList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: getkhadamatList(),
    );
  }

  Widget getkhadamatList() {
    return ListView.builder(
      itemCount: widget.khadamatlist.length,
      itemBuilder: (context, index) {
        return getkhadamatTile(widget.khadamatlist[index], context);
      },
    );
  }

  Widget getkhadamatTile(KhadamatModel khadamatmodel, context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            khadamatmodel.title,
            style: TextStyle(
              color: widget.color,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Divider(
            height: 20,
            thickness: 1,
            color: widget.color,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 14, vertical: 2),
            decoration: BoxDecoration(
              color: widget.color,
              borderRadius: BorderRadius.circular(14),
            ),
            child: Text(
              khadamatmodel.desc,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          // Text(
          //   khadamatmodel.text,
          //   style: TextStyle(
          //     color: Colors.white,
          //     fontSize: 14,
          //   ),
          // ),
          RaisedButton(
            child: Text(
              khadamatmodel.buttontext,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            onPressed: () {
              if (khadamatmodel.isCall == true) {
                _launchURA(khadamatmodel);
              } else
                _textMe(khadamatmodel);
            },
            color: widget.color,
          )
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 5,
          ),
        ],
        borderRadius: BorderRadius.circular(14),
      ),
    );
  }

  _textMe(KhadamatModel khadamatmodel) async {
    String num = Uri.encodeComponent(khadamatmodel.num);
    // String encoded = Uri.encodeComponent(bundleModel.activedes);
    String text = Uri.encodeComponent(khadamatmodel.sms);
    String uri = "sms:$num?body=$text";
    if (await canLaunch(uri)) {
      await launch(uri);
    } else {
      throw 'Could not launch $uri';
    }
  }

  _launchURA(KhadamatModel khadamatmodel) async {
    String encoded = Uri.encodeComponent(khadamatmodel.num);
    String url = "tel:$encoded";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
