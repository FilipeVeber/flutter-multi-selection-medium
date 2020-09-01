import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_multi_selection_medium/app/modules/task/stores/task_store.dart';
import 'package:flutter_multi_selection_medium/app/modules/task/widgets/task_tile.dart';

class TaskScreen extends StatelessWidget {
  var store = Modular.get<TaskStore>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Multi Selection Medium"),
        actions: _buildAppBarActions(),
      ),
      body: Observer(
        builder: (_) {
          return _buildList();
        },
      ),
    );
  }

  _buildAppBarActions() {
    var actions = List<Widget>();

    actions.add(Observer(
      builder: (_) {
        return store.multiSelectionIsEnabled
            ? IconButton(
                icon: Icon(Icons.delete),
                onPressed: store.removeSelectedTasks,
              )
            : Container();
      },
    ));

    actions.add(Observer(
      builder: (_) {
        return store.multiSelectionIsEnabled
            ? IconButton(
                icon: Icon(Icons.clear),
                onPressed: store.disableMultiSelection,
              )
            : Container();
      },
    ));

    return actions;
  }

  _buildList() {
    return ListView.builder(
      itemCount: store.tasks.length,
      itemBuilder: (_, index) {
        var task = store.tasks[index];
        return TaskTile(Key(task.hashCode.toString()), task);
      },
    );
  }
}
