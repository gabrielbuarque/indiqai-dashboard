import '/components/header/header_widget.dart';
import '/components/navigator/navigator_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'virtual_tour_widget.dart' show VirtualTourWidget;
import 'package:flutter/material.dart';

class VirtualTourModel extends FlutterFlowModel<VirtualTourWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Header component.
  late HeaderModel headerModel;
  // Model for Navigator component.
  late NavigatorModel navigatorModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    navigatorModel = createModel(context, () => NavigatorModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    navigatorModel.dispose();
  }
}
