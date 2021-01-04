import 'package:intl/intl.dart';
import 'package:quiver/src/time/clock.dart';

String formatHourMinute(int timestamp) {
  final hourMinuteFormat = DateFormat(DateFormat.HOUR_MINUTE);
  return hourMinuteFormat
      .format(DateTime.fromMillisecondsSinceEpoch(timestamp));
}

String formatWeekDay(int timestamp) {
  final weekDayFormat = DateFormat(DateFormat.WEEKDAY);
  return weekDayFormat.format(DateTime.fromMillisecondsSinceEpoch(timestamp));
}

bool checkScope(DateTime other, [Clock clock]) {
  final now = clock?.now() ?? DateTime.now();
  final isInScope = other.difference(now).inDays < Duration(days: 8).inDays;
  // print(now.difference(other));
  return isInScope;
}
