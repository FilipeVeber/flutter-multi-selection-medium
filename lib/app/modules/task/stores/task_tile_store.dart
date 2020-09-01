import 'package:flutter_multi_selection_medium/app/modules/task/model/task.dart';
import 'package:mobx/mobx.dart';

part 'task_tile_store.g.dart';

class TaskTileStore = _TaskTileStoreBase with _$TaskTileStore;

abstract class _TaskTileStoreBase with Store {
  _TaskTileStoreBase(Task task) {
    title = task.title;
    isSelected = task.isSelected;
  }

  String title;

  @observable
  bool isSelected;

  @action
  void toogleSelection() => isSelected = !isSelected;

  @action
  void removeSelection() => isSelected = false;

  @action
  void addSelection() => isSelected = true;
}
