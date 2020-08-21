import 'dart:math';

double percentChange(double open, double current) {
  return ((current - open) / open) * 100;
}
