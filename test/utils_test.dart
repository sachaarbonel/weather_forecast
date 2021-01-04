import 'package:quiver/testing/src/async/fake_async.dart';
import 'package:test/test.dart';
import 'package:weather_forecast/utils/date.dart';

void main() {
  test('test date utils formatHourMinute', () {
    expect(formatHourMinute(1610100000), '11:15 AM');
  });

  test('test date utils formatWeekDay', () {
    expect(formatWeekDay(1610100000), 'Monday');
  });

  test('checkScope test', () {
    FakeAsync().run((self) {
      final clock = self.getClock(DateTime(2021, 01, 03));

      expect(checkScope(DateTime(2021, 01, 05), clock), true);
      expect(checkScope(DateTime(2021, 01, 11), clock), false);
    });
  });
}
