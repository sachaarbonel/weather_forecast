import 'package:test/test.dart';
import 'package:weather_forecast/utils/date.dart';

void main() {
  test('test date utils formatHourMinute', () {
    expect(formatHourMinute(1610100000), '11:15 AM');
  });

  test('test date utils formatWeekDay', () {
    expect(formatWeekDay(1610100000), 'Monday');
  });
}
