import '/backend/supabase/supabase.dart';
import '/components/navigator/navigator_widget.dart';
import '/components/novos_clientes/novos_clientes_widget.dart';
import '/components/sub_header/sub_header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'dart:async';
import 'dashboard01_widget.dart' show Dashboard01Widget;
import 'package:flutter/material.dart';

class Dashboard01Model extends FlutterFlowModel<Dashboard01Widget> {
  ///  State fields for stateful widgets in this page.

  InstantTimer? instantTimer;
  Completer<List<EmpresasRow>>? requestCompleter;
  // Model for SubHeader component.
  late SubHeaderModel subHeaderModel;
  // Model for NovosClientes component.
  late NovosClientesModel novosClientesModel;
  // Model for Navigator component.
  late NavigatorModel navigatorModel;

  @override
  void initState(BuildContext context) {
    subHeaderModel = createModel(context, () => SubHeaderModel());
    novosClientesModel = createModel(context, () => NovosClientesModel());
    navigatorModel = createModel(context, () => NavigatorModel());
  }

  @override
  void dispose() {
    instantTimer?.cancel();
    subHeaderModel.dispose();
    novosClientesModel.dispose();
    navigatorModel.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
