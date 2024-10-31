import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrayerTimeCard extends StatelessWidget {
  const PrayerTimeCard({super.key, required this.PrayName, required this.PrayTime});
  final String PrayName;
  final String PrayTime;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(12),
      shadowColor: Colors.black,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 12,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(PrayName +" : ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
          SizedBox(width: 10,),
          Text(PrayTime,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
