import '/components/menu_item/menu_item_widget.dart';
import '/components/notificacao_lancamento/notificacao_lancamento_widget.dart';
import '/components/user_row_card_res_start_chat/user_row_card_res_start_chat_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import 'menu_widget.dart' show MenuWidget;
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MenuModel extends FlutterFlowModel<MenuWidget> {
  ///  Local state fields for this component.

  bool subMenuOrders = false;

  bool showUpgrade = true;

  ///  State fields for stateful widgets in this component.

  // Model for MenuItem component.
  late MenuItemModel menuItemModel1;
  // Model for Campanhas.
  late MenuItemModel campanhasModel;
  // Model for MenuItem component.
  late MenuItemModel menuItemModel2;
  // Model for MenuItem component.
  late MenuItemModel menuItemModel3;
  // Model for MenuItem component.
  late MenuItemModel menuItemModel4;
  // Model for userRowCardResStartChat component.
  late UserRowCardResStartChatModel userRowCardResStartChatModel1;
  // Model for userRowCardResStartChat component.
  late UserRowCardResStartChatModel userRowCardResStartChatModel2;
  // Model for userRowCardResStartChat component.
  late UserRowCardResStartChatModel userRowCardResStartChatModel3;

  @override
  void initState(BuildContext context) {
    menuItemModel1 = createModel(context, () => MenuItemModel());
    campanhasModel = createModel(context, () => MenuItemModel());
    menuItemModel2 = createModel(context, () => MenuItemModel());
    menuItemModel3 = createModel(context, () => MenuItemModel());
    menuItemModel4 = createModel(context, () => MenuItemModel());
    userRowCardResStartChatModel1 =
        createModel(context, () => UserRowCardResStartChatModel());
    userRowCardResStartChatModel2 =
        createModel(context, () => UserRowCardResStartChatModel());
    userRowCardResStartChatModel3 =
        createModel(context, () => UserRowCardResStartChatModel());
  }

  @override
  void dispose() {
    menuItemModel1.dispose();
    campanhasModel.dispose();
    menuItemModel2.dispose();
    menuItemModel3.dispose();
    menuItemModel4.dispose();
    userRowCardResStartChatModel1.dispose();
    userRowCardResStartChatModel2.dispose();
    userRowCardResStartChatModel3.dispose();
  }
}
