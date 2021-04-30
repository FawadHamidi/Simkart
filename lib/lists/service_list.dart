import 'package:flutter/material.dart';
import 'package:simkart/lists/khadamt_list.dart';
import 'package:simkart/utilis/service_cards.dart';
import 'package:simkart/lists/routin_list.dart';
import 'package:simkart/utilis/constants.dart';
import 'package:facebook_audience_network/facebook_audience_network.dart';

class ServiceList extends StatefulWidget {
  final Color color;
  final String text;
  ServiceList(this.color, this.text);

  @override
  _ServiceListState createState() => _ServiceListState();
}

class _ServiceListState extends State<ServiceList> {
  bool _isInterstitialAdloaded = false;
  @override
  void initState() {
    super.initState();

    _loadInterstitialAd();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _loadInterstitialAd();
  }

  void _loadInterstitialAd() {
    FacebookInterstitialAd.loadInterstitialAd(
        placementId: "286294986322707_286314652987407",
        listener: (result, value) {
          print("interstitialAd:$result-->$value");
          if (result == InterstitialAdResult.LOADED) {
            _isInterstitialAdloaded = true;
          }
          if (result == InterstitialAdResult.DISMISSED &&
              value["invalidated"] == true) {
            _isInterstitialAdloaded = false;
            _loadInterstitialAd();
          }
        });
  }

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
          ServiceCard('assets/1.png', 'بسته های انترنتی', () {
            _showInterstitialAd();
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        RoutinList('بسته های انترنتی', widget.color, 1)));
          }),
          ServiceCard('assets/sms2.png', 'بسته های پیام', () {
            _showInterstitialAd();
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        RoutinList('بسته های پیام', widget.color, 2)));
          }),
          ServiceCard('assets/call.png', 'بسته های تماس', () {
            _showInterstitialAd();
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        RoutinList('بسته های تماس', widget.color, 3)));
          }),
          ServiceCard('assets/fff.png', 'بسته های بین المللی', () {
            _showInterstitialAd();
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        RoutinList('بسته های بین المللی', widget.color, 4)));
          }),
          ServiceCard('assets/hhh.png', 'خدمات', () {
            _showInterstitialAd();
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        KhadamatList(khadHandler(), 'خدمات', widget.color)));
          }),
        ],
      ),
    );
  }

  khadHandler() {
    if (widget.color == Colors.red) {
      return Constants.roshkhad;
    } else if (widget.color == Colors.green) {
      return Constants.etikhad;
    } else if (widget.color == Colors.lightBlueAccent)
      return Constants.salaamkhad;
    else if (widget.color == Colors.amber)
      return Constants.mtnkhad;
    else if (widget.color == Colors.blue) return Constants.afcckhad;
  }

  _showInterstitialAd() {
    if (_isInterstitialAdloaded == true) {
      FacebookInterstitialAd.showInterstitialAd();
    }
  }
}
