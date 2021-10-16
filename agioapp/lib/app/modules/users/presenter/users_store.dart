import 'package:agioapp/app/modules/users/domain/entities/customer.dart';
import 'package:mobx/mobx.dart';

part 'users_store.g.dart';

class UsersStore = _UsersStoreBase with _$UsersStore;

abstract class _UsersStoreBase with Store {
  @observable
  ObservableList<Customer> customers = <Customer>[
    Customer(name: 'User one', address: 'NY', id: '1'),
    Customer(name: 'User two', address: 'GE', id: '2'),
    Customer(name: 'User three', address: 'TX', id: '3'),
  ].asObservable();

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
