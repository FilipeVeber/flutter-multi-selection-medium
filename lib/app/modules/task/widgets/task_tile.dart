import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_multi_selection_medium/app/modules/task/stores/task_store.dart';
import 'package:flutter_multi_selection_medium/app/modules/task/stores/task_tile_store.dart';

class TaskTile extends StatelessWidget {
  var store = Modular.get<TaskStore>();

  final Key key;
  final TaskTileStore task;

  TaskTile(this.key, this.task);

  var leadingIcon;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        leadingIcon = null;

        if (store.multiSelectionIsEnabled) {
          if (task.isSelected) {
            leadingIcon = Icon(
              Icons.check_circle,
              color: Colors.green,
            );
          } else {
            leadingIcon = Icon(Icons.check_circle_outline);
          }
        }

        return ListTile(
          leading: leadingIcon,
          title: Text(task.title),
          onTap: task.toogleSelection,
          onLongPress: () {
            task.addSelection();
            store.enableMultiSelection();
          },
        );
      },
    );
  }
}
