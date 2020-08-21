import 'package:flutter_test/flutter_test.dart';
import 'package:marketwatchdog/services/computations.dart';

void main() {
  test('% Change Test', () {
    var result = percentChange(50, 100);
    expect(result, 100);
  });
}
