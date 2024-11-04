import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'menu_item_model.dart';
export 'menu_item_model.dart';

class MenuItemWidget extends StatefulWidget {
  const MenuItemWidget({
    super.key,
    bool? isActivePage,
    required this.text,
    required this.icon,
    bool? hasNumberTag,
    int? number,
    Color? tagColor,
    bool? hasSubMenu,
    bool? subMenuExpanded,
  })  : this.isActivePage = isActivePage ?? false,
        this.hasNumberTag = hasNumberTag ?? false,
        this.number = number ?? 0,
        this.tagColor = tagColor ?? const Color(0xFF6C94E5),
        this.hasSubMenu = hasSubMenu ?? false,
        this.subMenuExpanded = subMenuExpanded ?? false;

  final bool isActivePage;
  final String? text;
  final Widget? icon;
  final bool hasNumberTag;
  final int number;
  final Color tagColor;
  final bool hasSubMenu;
  final bool subMenuExpanded;

  @override
  State<MenuItemWidget> createState() => _MenuItemWidgetState();
}

class _MenuItemWidgetState extends State<MenuItemWidget> {
  late MenuItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuItemModel());

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
