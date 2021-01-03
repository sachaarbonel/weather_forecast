//TODO: move this to utils and test it
  import 'package:intl/intl.dart';

String formatHourMinute(int timestamp) {
    final hourMinuteFormat = DateFormat(DateFormat.HOUR_MINUTE);
    return hourMinuteFormat
        .format(DateTime.fromMillisecondsSinceEpoch(timestamp));
  }

  String formatWeekDay(int timestamp) {
    final weekDayFormat = DateFormat(DateFormat.WEEKDAY);
    return weekDayFormat.format(DateTime.fromMillisecondsSinceEpoch(timestamp));
  }