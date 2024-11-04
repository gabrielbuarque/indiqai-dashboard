import '/components/menu_item/menu_item_widget.dart';
import '/components/notificacao_lancamento/notificacao_lancamento_widget.dart';
import '/components/user_row_card_res_start_chat/user_row_card_res_start_chat_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'menu_model.dart';
export 'menu_model.dart';

class MenuWidget extends StatefulWidget {
  const MenuWidget({
    super.key,
    required this.activePageName,
    bool? pageIsInSubMenu,
    this.subMenuName,
  }) : pageIsInSubMenu = pageIsInSubMenu ?? false;

  final String? activePageName;
  final bool pageIsInSubMenu;
  final String? subMenuName;

  @override
  State<MenuWidget> createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> with TickerProviderStateMixin {
  late MenuModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuModel());

    animationsMap.addAll({
      'columnOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 200.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
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
    return Container(
      height: double.infinity,
      constraints: const BoxConstraints(
        minWidth: 90.0,
        maxWidth: 290.0,
      ),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                if (responsiveVisibility(
                  context: context,
                  phone: false,
                  tablet: false,
                  tabletLandscape: false,
                ))
                  Container(
                    width: 150.0,
                    height: 80.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Visibility(
                      visible: responsiveVisibility(
                        context: context,
                        phone: false,
                        tablet: false,
                        tabletLandscape: false,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(0.0),
                        child: SvgPicture.asset(
                          'assets/images/LOGO_PDF_INDIQAI_GORN_FUNDO_TRANSP.svg',
                          width: 40.0,
                          height: 40.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                if (responsiveVisibility(
                  context: context,
                  desktop: false,
                ))
                  Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Visibility(
                      visible: MediaQuery.sizeOf(context).width <= 1200.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(0.0),
                        child: Image.asset(
                          'assets/images/LOGO_INDIQAI_ICON_2.png',
                          width: 32.0,
                          height: 32.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                if (responsiveVisibility(
                  context: context,
                  phone: false,
                  tablet: false,
                  tabletLandscape: false,
                ))
                  Container(
                    height: 50.0,
                    decoration: const BoxDecoration(),
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                  ),
              ].divide(const SizedBox(width: 4.0)),
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  if (widget.activePageName != 'Dashboard01') {
                                    context.goNamed('Dashboard01');
                                  }
                                },
                                child: wrapWithModel(
                                  model: _model.menuItemModel1,
                                  updateCallback: () => safeSetState(() {}),
                                  updateOnChange: true,
                                  child: MenuItemWidget(
                                    isActivePage:
                                        widget.activePageName == 'Dashboard',
                                    text: 'Dashboard',
                                    icon: Icon(
                                      Icons.grid_view,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 24.0,
                                    ),
                                    hasNumberTag: false,
                                    tagColor:
                                        FlutterFlowTheme.of(context).primary,
                                    hasSubMenu: false,
                                    subMenuExpanded: false,
                                  ),
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  await showModalBottomSheet(
                                    isScrollControlled: true,
                                    backgroundColor: Colors.transparent,
                                    enableDrag: false,
                                    context: context,
                                    builder: (context) {
                                      return Padding(
                                        padding:
                                            MediaQuery.viewInsetsOf(context),
                                        child: NotificacaoLancamentoWidget(
                                          title: '',
                                          message: '',
                                          buttonText: 'Okay!',
                                          butttonColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          buttonShow: true,
                                        ),
                                      );
                                    },
                                  ).then((value) => safeSetState(() {}));
                                },
                                child: wrapWithModel(
                                  model: _model.campanhasModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: MenuItemWidget(
                                    isActivePage: false,
                                    text: 'Cupons',
                                    icon: Icon(
                                      Icons.sim_card,
                                      color:
                                          FlutterFlowTheme.of(context).gray400,
                                      size: 24.0,
                                    ),
                                    hasNumberTag: false,
                                    number: 1,
                                    tagColor:
                                        FlutterFlowTheme.of(context).primary,
                                    hasSubMenu: false,
                                    subMenuExpanded: false,
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        enableDrag: false,
                                        context: context,
                                        builder: (context) {
                                          return Padding(
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
                                            child: NotificacaoLancamentoWidget(
                                              title: '',
                                              message: '',
                                              buttonText: 'Okay!',
                                              butttonColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              buttonShow: true,
                                            ),
                                          );
                                        },
                                      ).then((value) => safeSetState(() {}));
                                    },
                                    child: wrapWithModel(
                                      model: _model.menuItemModel2,
                                      updateCallback: () => safeSetState(() {}),
                                      child: MenuItemWidget(
                                        isActivePage: false,
                                        text: 'Histórico',
                                        icon: Icon(
                                          Icons.receipt_long_sharp,
                                          color: FlutterFlowTheme.of(context)
                                              .gray400,
                                          size: 24.0,
                                        ),
                                        hasNumberTag: false,
                                        number: 5,
                                        tagColor: FlutterFlowTheme.of(context)
                                            .secondary,
                                        hasSubMenu: true,
                                        subMenuExpanded: _model.subMenuOrders,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0x80EFF3FA),
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    child: Visibility(
                                      visible: _model.subMenuOrders,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              if (responsiveVisibility(
                                                context: context,
                                                phone: false,
                                                tablet: false,
                                                tabletLandscape: false,
                                              ))
                                                Container(
                                                  width: 200.0,
                                                  height: 1.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .neutral200,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            0.0),
                                                  ),
                                                ),
                                            ],
                                          ),
                                        ],
                                      ).animateOnPageLoad(animationsMap[
                                          'columnOnPageLoadAnimation']!),
                                    ),
                                  ),
                                ],
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.goNamed('ValidarCupom');
                                },
                                child: wrapWithModel(
                                  model: _model.menuItemModel3,
                                  updateCallback: () => safeSetState(() {}),
                                  child: MenuItemWidget(
                                    isActivePage: false,
                                    text: 'Validar Cupom',
                                    icon: Icon(
                                      Icons.document_scanner,
                                      color:
                                          FlutterFlowTheme.of(context).gray400,
                                      size: 24.0,
                                    ),
                                    hasNumberTag: true,
                                    number: 3,
                                    tagColor:
                                        FlutterFlowTheme.of(context).tertiary,
                                    hasSubMenu: false,
                                    subMenuExpanded: false,
                                  ),
                                ),
                              ),
                              wrapWithModel(
                                model: _model.menuItemModel4,
                                updateCallback: () => safeSetState(() {}),
                                child: MenuItemWidget(
                                  isActivePage: false,
                                  text: 'Perfil do restaurante',
                                  icon: Icon(
                                    Icons.person_outlined,
                                    color: FlutterFlowTheme.of(context).gray400,
                                    size: 24.0,
                                  ),
                                  hasNumberTag: false,
                                  number: 3,
                                  tagColor:
                                      FlutterFlowTheme.of(context).tertiary,
                                  hasSubMenu: false,
                                  subMenuExpanded: false,
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 16.0, 0.0, 16.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Container(
                                          width: 44.0,
                                          height: 1.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .textFieldBachGround,
                                            shape: BoxShape.rectangle,
                                          ),
                                        ),
                                        if (responsiveVisibility(
                                          context: context,
                                          phone: false,
                                          tablet: false,
                                          tabletLandscape: false,
                                        ))
                                          Container(
                                            width: 200.0,
                                            height: 1.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .textFieldBachGround,
                                            ),
                                            alignment:
                                                const AlignmentDirectional(-1.0, 0.0),
                                          ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 12.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Container(
                                          width: 44.0,
                                          height: 44.0,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Icon(
                                            Icons.person_add_alt,
                                            color: FlutterFlowTheme.of(context)
                                                .neutral400,
                                            size: 20.0,
                                          ),
                                        ),
                                        if (responsiveVisibility(
                                          context: context,
                                          phone: false,
                                          tablet: false,
                                          tabletLandscape: false,
                                        ))
                                          Container(
                                            width: 200.0,
                                            height: 44.0,
                                            decoration: const BoxDecoration(),
                                            alignment:
                                                const AlignmentDirectional(-1.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'Garçons ativos',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Nunito',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .neutral400,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                AlignedTooltip(
                                                  content: Padding(
                                                    padding:
                                                        const EdgeInsets.all(4.0),
                                                    child: Text(
                                                      'Find to start conversation',
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodySmall
                                                          .override(
                                                            fontFamily:
                                                                'Nunito',
                                                            fontSize: 11.0,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                  offset: 4.0,
                                                  preferredDirection:
                                                      AxisDirection.right,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          4.0),
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .textFieldBachGround,
                                                  elevation: 4.0,
                                                  tailBaseWidth: 16.0,
                                                  tailLength: 8.0,
                                                  waitDuration: const Duration(
                                                      milliseconds: 50),
                                                  showDuration: const Duration(
                                                      milliseconds: 400),
                                                  triggerMode:
                                                      TooltipTriggerMode.tap,
                                                  child: FlutterFlowIconButton(
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderRadius: 8.0,
                                                    buttonSize: 32.0,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .neutral100,
                                                    icon: Icon(
                                                      Icons
                                                          .manage_search_outlined,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      size: 16.0,
                                                    ),
                                                    onPressed: () {
                                                      print(
                                                          'IconButton pressed ...');
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.userRowCardResStartChatModel1,
                                    updateCallback: () => safeSetState(() {}),
                                    child: UserRowCardResStartChatWidget(
                                      avatar:
                                          'https://images.unsplash.com/photo-1599566150163-29194dcaad36?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwzfHxhdmF0YXJ8ZW58MHx8fHwxNjk4NDg3MTY2fDA&ixlib=rb-4.0.3&q=80&w=400',
                                      displayName: 'John Doe',
                                      email: 'john@email.com',
                                      actionStartChat: () async {},
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.userRowCardResStartChatModel2,
                                    updateCallback: () => safeSetState(() {}),
                                    child: UserRowCardResStartChatWidget(
                                      avatar:
                                          'https://images.unsplash.com/photo-1580489944761-15a19d654956?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw0fHxhdmF0YXJ8ZW58MHx8fHwxNjk4NDg3MTY2fDA&ixlib=rb-4.0.3&q=80&w=400',
                                      displayName: 'Anne Morison',
                                      email: 'anne@email.com',
                                      actionStartChat: () async {},
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.userRowCardResStartChatModel3,
                                    updateCallback: () => safeSetState(() {}),
                                    child: UserRowCardResStartChatWidget(
                                      avatar:
                                          'https://images.unsplash.com/photo-1628157588553-5eeea00af15c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxNHx8YXZhdGFyfGVufDB8fHx8MTY5ODQ4NzE2Nnww&ixlib=rb-4.0.3&q=80&w=400',
                                      displayName: 'Sozan Ricco',
                                      email: 'sozie@email.com',
                                      actionStartChat: () async {},
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ].divide(const SizedBox(height: 8.0)),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      if (responsiveVisibility(
                        context: context,
                        phone: false,
                        tablet: false,
                        tabletLandscape: false,
                      ))
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            if (_model.showUpgrade)
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .textFieldBachGround,
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 12.0),
                                  child: Stack(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Agente AI !',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleMedium
                                                        .override(
                                                          fontFamily: 'Nunito',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w900,
                                                        ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: FaIcon(
                                                      FontAwesomeIcons.robot,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
                                                      size: 16.0,
                                                    ),
                                                  ),
                                                ].divide(const SizedBox(width: 8.0)),
                                              ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Flexible(
                                                  child: Text(
                                                    'Em breve um agente de inteligência artifical irá te acompanhar em todas as decisões!',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Nunito',
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                          lineHeight: 1.3,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ].divide(const SizedBox(height: 8.0)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                          ],
                        ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed('LoginPage');
                        },
                        child: Container(
                          height: 50.0,
                          decoration: const BoxDecoration(),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 50.0,
                                height: 50.0,
                                decoration: const BoxDecoration(),
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Icon(
                                    Icons.logout,
                                    color: FlutterFlowTheme.of(context).error,
                                    size: 24.0,
                                  ),
                                ),
                              ),
                              if (responsiveVisibility(
                                context: context,
                                phone: false,
                                tablet: false,
                                tabletLandscape: false,
                              ))
                                Container(
                                  width: 200.0,
                                  height: 50.0,
                                  decoration: const BoxDecoration(),
                                  alignment: const AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    'Sair',
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Nunito',
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ].divide(const SizedBox(height: 24.0)).addToStart(const SizedBox(height: 16.0)),
        ),
      ),
    );
  }
}
