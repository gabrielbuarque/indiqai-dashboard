import '/components/order_status/order_status_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'order_items_widget.dart' show OrderItemsWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OrderItemsModel extends FlutterFlowModel<OrderItemsWidget> {
  ///  Local state fields for this component.

  bool favoritedInside = false;

  ///  State fields for stateful widgets in this component.

  // Model for OrderStatus component.
  late OrderStatusModel orderStatusModel;

  @override
  void initState(BuildContext context) {
    orderStatusModel = createModel(context, () => OrderStatusModel());
  }

  @override
  void dispose() {
    orderStatusModel.dispose();
  }
}
