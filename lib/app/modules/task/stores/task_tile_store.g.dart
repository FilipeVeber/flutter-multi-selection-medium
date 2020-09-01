// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_tile_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TaskTileStore on _TaskTileStoreBase, Store {
  final _$isSelectedAtom = Atom(name: '_TaskTileStoreBase.isSelected');

  @override
  bool get isSelected {
    _$isSelectedAtom.reportRead();
    return super.isSelected;
  }

  @override
  set isSelected(bool value) {
    _$isSelectedAtom.reportWrite(value, super.isSelected, () {
      super.isSelected = value;
    });
  }

  final _$_TaskTileStoreBaseActionController =
      ActionController(name: '_TaskTileStoreBase');

  @override
  void toogleSelection() {
    final _$actionInfo = _$_TaskTileStoreBaseActionController.startAction(
        name: '_TaskTileStoreBase.toogleSelection');
    try {
      return super.toogleSelection();
    } finally {
      _$_TaskTileStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeSelection() {
    final _$actionInfo = _$_TaskTileStoreBaseActionController.startAction(
        name: '_TaskTileStoreBase.removeSelection');
    try {
      return super.removeSelection();
    } finally {
      _$_TaskTileStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addSelection() {
    final _$actionInfo = _$_TaskTileStoreBaseActionController.startAction(
        name: '_TaskTileStoreBase.addSelection');
    try {
      return super.addSelection();
    } finally {
      _$_TaskTileStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isSelected: ${isSelected}
    ''';
  }
}
