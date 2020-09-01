// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TaskStore on _TaskStoreBase, Store {
  final _$tasksAtom = Atom(name: '_TaskStoreBase.tasks');

  @override
  ObservableList<TaskTileStore> get tasks {
    _$tasksAtom.reportRead();
    return super.tasks;
  }

  @override
  set tasks(ObservableList<TaskTileStore> value) {
    _$tasksAtom.reportWrite(value, super.tasks, () {
      super.tasks = value;
    });
  }

  final _$multiSelectionIsEnabledAtom =
      Atom(name: '_TaskStoreBase.multiSelectionIsEnabled');

  @override
  bool get multiSelectionIsEnabled {
    _$multiSelectionIsEnabledAtom.reportRead();
    return super.multiSelectionIsEnabled;
  }

  @override
  set multiSelectionIsEnabled(bool value) {
    _$multiSelectionIsEnabledAtom
        .reportWrite(value, super.multiSelectionIsEnabled, () {
      super.multiSelectionIsEnabled = value;
    });
  }

  final _$_TaskStoreBaseActionController =
      ActionController(name: '_TaskStoreBase');

  @override
  void _createTaskList() {
    final _$actionInfo = _$_TaskStoreBaseActionController.startAction(
        name: '_TaskStoreBase._createTaskList');
    try {
      return super._createTaskList();
    } finally {
      _$_TaskStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void enableMultiSelection() {
    final _$actionInfo = _$_TaskStoreBaseActionController.startAction(
        name: '_TaskStoreBase.enableMultiSelection');
    try {
      return super.enableMultiSelection();
    } finally {
      _$_TaskStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void disableMultiSelection() {
    final _$actionInfo = _$_TaskStoreBaseActionController.startAction(
        name: '_TaskStoreBase.disableMultiSelection');
    try {
      return super.disableMultiSelection();
    } finally {
      _$_TaskStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _resetSelectedTasks() {
    final _$actionInfo = _$_TaskStoreBaseActionController.startAction(
        name: '_TaskStoreBase._resetSelectedTasks');
    try {
      return super._resetSelectedTasks();
    } finally {
      _$_TaskStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeSelectedTasks() {
    final _$actionInfo = _$_TaskStoreBaseActionController.startAction(
        name: '_TaskStoreBase.removeSelectedTasks');
    try {
      return super.removeSelectedTasks();
    } finally {
      _$_TaskStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
tasks: ${tasks},
multiSelectionIsEnabled: ${multiSelectionIsEnabled}
    ''';
  }
}
