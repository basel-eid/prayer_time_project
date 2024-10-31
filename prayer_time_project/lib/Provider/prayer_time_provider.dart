import 'package:flutter/cupertino.dart';
import 'package:prayer_time_project/Model/prayer_time_model.dart';
import 'package:prayer_time_project/Service/api_service.dart';
class PrayerTimeProvider extends ChangeNotifier{
  PrayerModel? prayerTimes;
  Future<void> fetchPrayerTimes()async{
    prayerTimes = await PrayerTimeService.getPrayerTimes();
    notifyListeners();
  }
}