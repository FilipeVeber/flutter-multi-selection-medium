import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_multi_selection_medium/app/app_widget.dart';
import 'package:flutter_multi_selection_medium/app/modules/task/screens/task_screen.dart';
import 'package:flutter_multi_selection_medium/app/modules/task/stores/task_store.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [Bind((i) => TaskStore())];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, __) => TaskScreen()),
      ];

  @override
  Widget get bootstrap => AppWidget();
}
