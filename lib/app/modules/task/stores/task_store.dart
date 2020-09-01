import 'package:flutter_multi_selection_medium/app/modules/task/model/task.dart';
import 'package:flutter_multi_selection_medium/app/modules/task/stores/task_tile_store.dart';
import 'package:mobx/mobx.dart';

part 'task_store.g.dart';

class TaskStore = _TaskStoreBase with _$TaskStore;

abstract class _TaskStoreBase with Store {
  @observable
  ObservableList<TaskTileStore> tasks = List<TaskTileStore>().asObservable();

  @observable
  bool multiSelectionIsEnabled = false;

  _TaskStoreBase() {
    _createTaskList();
  }

  @action
  void _createTaskList() {
    for (int i = 0; i <= 20; i++) {
      tasks.add(TaskTileStore(Task("Task $i")));
    }
  }

  @action
  void enableMultiSelection() => multiSelectionIsEnabled = true;

  @action
  void disableMultiSelection() {
    multiSelectionIsEnabled = false;
    _resetSelectedTasks();
  }

  @action
  void _resetSelectedTasks() {
    tasks.where((element) => element.isSelected).forEach((element) {
      element.removeSelection();
    });
  }

  @action
  void removeSelectedTasks() {
    tasks.removeWhere((element) => element.isSelected);

    disableMultiSelection();
  }
}
