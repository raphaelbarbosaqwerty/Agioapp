import 'package:flutter_test/flutter_test.dart';
import 'package:agioapp/app/modules/loan/presenter/loan_store.dart';

void main() {
  late LoanStore store;

  setUpAll(() {
    store = LoanStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}
