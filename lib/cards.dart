import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconcolor;
  final Function ontap;
  final String etext;
  ReusableCard(this.icon, this.text, this.iconcolor, this.ontap, this.etext);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 14.0, vertical: 14.0),

        child: Row(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: iconcolor,
              size: 36.0,
            ),
            SizedBox(
              width: 14.0,
            ),
            Text(
              text,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
              ),
            ),
            Expanded(
              child: Text(
                etext,
                textAlign: TextAlign.end,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                ),
              ),
            ),
            SizedBox(
              width: 20,
            )
          ],
        ),
        // height: 100.0,
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
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
