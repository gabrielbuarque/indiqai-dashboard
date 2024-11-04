import '/components/header/header_widget.dart';
import '/components/navigator/navigator_widget.dart';
import '/components/sub_header/sub_header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cupons02_widget.dart' show Cupons02Widget;
import 'package:flutter/material.dart';

class Cupons02Model extends FlutterFlowModel<Cupons02Widget> {
  ///  State fields for stateful widgets in this page.

  // Model for Header component.
  late HeaderModel headerModel;
  // Model for SubHeader component.
  late SubHeaderModel subHeaderModel;
  // Model for Navigator component.
  late NavigatorModel navigatorModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    subHeaderModel = createModel(context, () => SubHeaderModel());
    navigatorModel = createModel(context, () => NavigatorModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    subHeaderModel.dispose();
    navigatorModel.dispose();
  }
}
