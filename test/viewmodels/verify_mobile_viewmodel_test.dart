import 'package:flutter_test/flutter_test.dart';
import 'package:stacked_mobile_starter/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('VerifyMobileViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}