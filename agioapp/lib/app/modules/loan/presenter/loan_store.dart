import 'package:mobx/mobx.dart';

part 'loan_store.g.dart';

class LoanStore = _LoanStoreBase with _$LoanStore;

abstract class _LoanStoreBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
