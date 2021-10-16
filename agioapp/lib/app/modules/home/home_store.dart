import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

class HomeStore = HomeStoreBase with _$HomeStore;

abstract class HomeStoreBase with Store {
  @observable
  List<String> debtList = [
    "Sexo",
    "Sexo 1",
    "Sexo 2",
    "Sexo 3",
    "Sexo 4"
  ];

  Future<void> getDebtsList() async {
    debtList = [
      "Sexo",
      "Sexo 1",
      "Sexo 2",
      "Sexo 3",
      "Sexo 4"
    ];
  }
}