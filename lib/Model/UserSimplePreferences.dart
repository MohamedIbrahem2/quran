import 'package:shared_preferences/shared_preferences.dart';
List<String> timer_Pray =["00:00","00:00","00:00","00:00","00:00","00:00"]; //["05:06", "06:30", "12:09", "15:30", "17:46", "19:04"];
class UserSimplePreferences {
  late SharedPreferences _preferences;

  String  Fajr = 'Fajr';
  String Shrouk = 'shrouk';
  String duhr = 'duhr';
  String Asr = 'Asr';
  String Magrib = 'magrib';
  String Asha = 'Asha';

   Future init() async =>
      _preferences = await SharedPreferences.getInstance();

   Future setFajr(String fajr) async =>
      await _preferences.setString(Fajr, fajr);

   String? getFajr() => _preferences.getString(Fajr);


   Future setshrouk(String shrouk) async =>
      await _preferences.setString(Shrouk, shrouk);

   String? getshrouk() => _preferences.getString(Shrouk);


   Future setduher(String duher) async =>
      await _preferences.setString(duhr, duher);

   String? getduher() => _preferences.getString(duhr);


   Future setAsr(String Asr1) async =>
      await _preferences.setString(Asr, Asr1);

   String? getAsr() => _preferences.getString(Asr);

   Future setmagrib(String magrib) async =>
      await _preferences.setString(Magrib, magrib);

   String? getmagrib() => _preferences.getString(Magrib);

   Future setAsha(String asha) async =>
      await _preferences.setString(Asha, asha);

   String? getmAsha() => _preferences.getString(Asha);
}