import 'package:intl/intl.dart';

import '../screens/Container.dart';
import 'UserSimplePreferences.dart';

var asr=timer_Pray[3].split(":");
var sun=timer_Pray[1].split(":");
int asr_hour=int.parse(asr[0]),
    sun_hour=int.parse(sun[0]),
    asr_minute=int.parse(asr[1]),
    sun_minute=int.parse(sun[1]),
    check_hour=int.parse(DateFormat('HH').format(DateTime.now())),
    check_minute=int.parse(DateFormat('mm').format(DateTime.now()));


var Is_AM_PM=((check_hour>asr_hour ||(check_hour==asr_hour && check_minute>asr_minute))
    && (check_hour>sun_hour ||(check_hour==sun_hour && check_minute<sun_hour)));