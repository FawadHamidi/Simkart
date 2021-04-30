import 'package:flutter/material.dart';

class ServiceCard extends StatelessWidget {
  final String image;
  final String text;
  final Function ontap;
  ServiceCard(this.image, this.text, this.ontap);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
        height: 60.0,
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            CircleAvatar(
              backgroundImage: AssetImage(image),
              backgroundColor: Colors.white,
              radius: 20,
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
            ),
            SizedBox(
              width: 8,
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
          borderRadius: BorderRadius.circular(100.0),
        ),
      ),
    );
  }
}
