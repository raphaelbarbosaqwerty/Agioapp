// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on HomeStoreBase, Store {
  final _$debtListAtom = Atom(name: 'HomeStoreBase.debtList');

  @override
  List<String> get debtList {
    _$debtListAtom.reportRead();
    return super.debtList;
  }

  @override
  set debtList(List<String> value) {
    _$debtListAtom.reportWrite(value, super.debtList, () {
      super.debtList = value;
    });
  }

  @override
  String toString() {
    return '''
debtList: ${debtList}
    ''';
  }
}
