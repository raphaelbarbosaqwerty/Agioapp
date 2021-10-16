import 'package:flutter_test/flutter_test.dart';
import 'package:agioapp/app/modules/users/presenter/users_store.dart';

void main() {
  late UsersStore store;

  setUpAll(() {
    store = UsersStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}
