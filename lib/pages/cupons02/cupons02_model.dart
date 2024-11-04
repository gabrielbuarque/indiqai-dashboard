import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/header/header_widget.dart';
import '/components/navigator/navigator_widget.dart';
import '/components/senha_admin_atualizar_widget.dart';
import '/components/senha_admin_criar_widget.dart';
import '/components/sub_header/sub_header_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'cupons02_widget.dart' show Cupons02Widget;
import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:octo_image/octo_image.dart';
import 'package:provider/provider.dart';

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
