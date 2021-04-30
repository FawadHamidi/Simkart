// import 'package:flutter/material.dart';
// import 'package:simkart/utilis/khadamat_model.dart';
// import 'package:url_launcher/url_launcher.dart';
//
// class Mybutton extends StatelessWidget {
//   String text;
//
//   Mybutton(
//     this.text,
//   );
//
//   @override
//   Widget build(BuildContext context) {
//     return RaisedButton(
//       child: Text(
//         text,
//         style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//       ),
//       onPressed: () {
//         buttonhandler(KhadamatModel);
//       },
//       color: Colors.blueAccent,
//     );
//   }
//
//   buttonhandler(KhadamatModel khadamatmodel) {
//     if (khadamatmodel.activetext == null) {
//       _launchURA(khadamatmodel);
//     } else
//       _textMe(khadamatmodel);
//   }
//
//   _textMe(KhadamatModel khadamatmodel) async {
//     String num = Uri.encodeComponent(khadamatmodel.active);
//     // String encoded = Uri.encodeComponent(bundleModel.activedes);
//     String text = Uri.encodeComponent(khadamatmodel.activetext);
//     String uri = "sms:$num?body=$text";
//     if (await canLaunch(uri)) {
//       await launch(uri);
//     } else {
//       throw 'Could not launch $uri';
//     }
//   }
//
//   _launchURA(KhadamatModel khadamatmodel) async {
//     String encoded = Uri.encodeComponent(khadamatmodel.active);
//     String url = "tel:$encoded";
//     if (await canLaunch(url)) {
//       await launch(url);
//     } else {
//       throw 'Could not launch $url';
//     }
//   }
// }
