import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prayer_time_project/Provider/prayer_time_provider.dart';
import 'package:prayer_time_project/Widgets/prayer_time_card.dart';
import 'package:provider/provider.dart';

class PrayerScreen extends StatelessWidget {
  const PrayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Prayer times"),
        centerTitle: true,
      ),
      body: Consumer<PrayerTimeProvider>(builder: (BuildContext context, PrayerTimeProvider value, Widget? child) {
        final prayerTimesV = value.prayerTimes;
        if(prayerTimesV==null){
          value.fetchPrayerTimes();
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        else{
          return ListView.separated(itemBuilder: (context , index){
            final prayeName = prayerTimesV.data.keys;
            final prayerTime = prayerTimesV.data.values;
            return PrayerTimeCard(
              PrayName: prayeName.elementAt(index),
              PrayTime: prayerTime.elementAt(index),
            );

          },
            separatorBuilder: (context, index) => const SizedBox(height: 20,),
            itemCount: prayerTimesV.data.length,
          );
        }
      },),
    );
  }
}
