import 'package:flutter/material.dart';

import 'bundle_model.dart';
import 'package:url_launcher/url_launcher.dart';

class BundleList extends StatefulWidget {
  final List<BundleModel> bundlelist;
  final Color color;
  final String text;
  BundleList(this.bundlelist, this.color, this.text);

  @override
  _BundleListState createState() => _BundleListState();
}

class _BundleListState extends State<BundleList> {
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
      body: getBundleList(),
    );
  }

  Widget getBundleList() {
    return ListView.builder(
      itemCount: widget.bundlelist.length,
      itemBuilder: (context, index) {
        return getBundleTile(widget.bundlelist[index], context);
      },
    );
  }

  Widget getBundleTile(BundleModel bundlemodel, context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
      child: Column(
        children: [
          SizedBox(
            height: 5,
          ),
          Text(
            bundlemodel.title,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Divider(
            height: 20,
            thickness: 0.5,
            color: Colors.grey,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                bundlemodel.gbamount,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                bundlemodel.period,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                bundlemodel.price,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 14, vertical: 2),
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Text(
                  bundlemodel.activedetail,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 14, vertical: 2),
                decoration: BoxDecoration(
                  color: Colors.redAccent.shade100,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Text(
                  bundlemodel.deactivedetail,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
              ),
              bundlemodel.info != null
                  ? Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 14, vertical: 2),
                      decoration: BoxDecoration(
                        color: Colors.lightBlueAccent,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Text(
                        bundlemodel.info,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                    )
                  : Divider(
                      thickness: 0,
                      color: Colors.white,
                    )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton(
                child: Text(
                  'فعال سازی',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  bundlemodel.activetext != null
                      ? _textMe(bundlemodel)
                      : _launchURA(bundlemodel);
                },

                // onPressed: () {
                //
                // },
                color: Colors.green,
              ),
              RaisedButton(
                child: Text(
                  ' غیر فعال سازی',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  bundlemodel.deactivetext != null
                      ? _smsMe(bundlemodel)
                      : _launchURD(bundlemodel);
                },
                color: Colors.red,
              ),
            ],
          ),
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

  _textMe(BundleModel bundleModel) async {
    String num = Uri.encodeComponent(bundleModel.activenum);
    // String encoded = Uri.encodeComponent(bundleModel.activedes);
    String text = Uri.encodeComponent(bundleModel.activetext);
    String uri = "sms:$num?body=$text";
    if (await canLaunch(uri)) {
      await launch(uri);
    } else {
      throw 'Could not launch $uri';
    }
  }

  _smsMe(BundleModel bundleModel) async {
    String num = Uri.encodeComponent(bundleModel.deactivenum);
    // String encoded = Uri.encodeComponent(bundleModel.activedes);
    String text = Uri.encodeComponent(bundleModel.deactivetext);
    String uri = "sms:$num?body=$text";
    if (await canLaunch(uri)) {
      await launch(uri);
    } else {
      throw 'Could not launch $uri';
    }
  }

  _launchURA(BundleModel bundleModel) async {
    String encoded = Uri.encodeComponent(bundleModel.activenum);
    String url = "tel:$encoded";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

_launchURD(BundleModel bundleModel) async {
  String encoded = Uri.encodeComponent(bundleModel.deactivenum);
  String url = "tel:$encoded";
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
