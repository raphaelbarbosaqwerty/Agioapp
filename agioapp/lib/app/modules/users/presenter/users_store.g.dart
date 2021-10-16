// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UsersStore on _UsersStoreBase, Store {
  final _$customersAtom = Atom(name: '_UsersStoreBase.customers');

  @override
  ObservableList<Customer> get customers {
    _$customersAtom.reportRead();
    return super.customers;
  }

  @override
  set customers(ObservableList<Customer> value) {
    _$customersAtom.reportWrite(value, super.customers, () {
      super.customers = value;
    });
  }

  final _$valueAtom = Atom(name: '_UsersStoreBase.value');

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$_UsersStoreBaseActionController =
      ActionController(name: '_UsersStoreBase');

  @override
  void increment() {
    final _$actionInfo = _$_UsersStoreBaseActionController.startAction(
        name: '_UsersStoreBase.increment');
    try {
      return super.increment();
    } finally {
      _$_UsersStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
customers: ${customers},
value: ${value}
    ''';
  }
}
