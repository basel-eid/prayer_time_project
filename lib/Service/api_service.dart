import 'package:dio/dio.dart';
import 'package:prayer_time_project/Model/prayer_time_model.dart';
class PrayerTimeService{
 static Dio dio = Dio();
  static Future<PrayerModel> getPrayerTimes() async{
    try{
      const url = 'http://api.aladhan.com/v1/timingsByCity?city=Giza&country=Egypt';
      final response = await dio.get(url);
      if(response.statusCode==200){
        return PrayerModel.fromjson(response.data);
      }
      else{
        throw Exception("Can't load prayer time");
      }
  }
  catch(e){
      throw Exception(e.toString());
  }
}
}