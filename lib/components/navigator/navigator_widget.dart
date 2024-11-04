import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'navigator_model.dart';
export 'navigator_model.dart';

class NavigatorWidget extends StatefulWidget {
  const NavigatorWidget({
    super.key,
    bool? expanded,
  }) : expanded = expanded ?? false;

  final bool expanded;

  @override
  State<NavigatorWidget> createState() => _NavigatorWidgetState();
}

class _NavigatorWidgetState extends State<NavigatorWidget> {
  late NavigatorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavigatorModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.expanded = !widget.expanded;
      safeSetState(() {});
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
