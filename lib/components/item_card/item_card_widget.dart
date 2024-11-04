import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'item_card_model.dart';
export 'item_card_model.dart';

class ItemCardWidget extends StatefulWidget {
  const ItemCardWidget({
    super.key,
    required this.image,
    required this.title,
    required this.address,
    required this.bedsNum,
    required this.bathNum,
    required this.sqfNum,
    required this.price,
  });

  final String? image;
  final String? title;
  final String? address;
  final int? bedsNum;
  final int? bathNum;
  final int? sqfNum;
  final double? price;

  @override
  State<ItemCardWidget> createState() => _ItemCardWidgetState();
}

class _ItemCardWidgetState extends State<ItemCardWidget>
    with TickerProviderStateMixin {
  late ItemCardModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ItemCardModel());

    animationsMap.addAll({
      'iconOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 100.0.ms,
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
      width: 470.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Wrap(
        spacing: 12.0,
        runSpacing: 12.0,
        alignment: WrapAlignment.start,
        crossAxisAlignment: WrapCrossAlignment.start,
        direction: Axis.horizontal,
        runAlignment: WrapAlignment.start,
        verticalDirection: VerticalDirection.down,
        clipBehavior: Clip.none,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: CachedNetworkImage(
              fadeInDuration: Duration(milliseconds: 500),
              fadeOutDuration: Duration(milliseconds: 500),
              imageUrl: widget!.image!,
              width: 200.0,
              height: 140.0,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: 250.0,
            height: 140.0,
            decoration: BoxDecoration(),
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).brand100,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 4.0, 8.0, 4.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  formatNumber(
                                    widget!.price,
                                    formatType: FormatType.decimal,
                                    decimalType: DecimalType.automatic,
                                    currency: '\$',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: 'Nunito',
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text(
                            widget!.title!,
                            maxLines: 1,
                            style: FlutterFlowTheme.of(context)
                                .labelLarge
                                .override(
                                  fontFamily: 'Nunito',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(),
                      child: MouseRegion(
                        opaque: false,
                        cursor: MouseCursor.defer ?? MouseCursor.defer,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 16.0,
                            ),
                            Flexible(
                              child: Text(
                                widget!.address!,
                                maxLines: 1,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Nunito',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                            if (_model.addressRegionHovered ?? true)
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5.0, 0.0, 0.0, 0.0),
                                child: Icon(
                                  Icons.launch_outlined,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 16.0,
                                ).animateOnPageLoad(
                                    animationsMap['iconOnPageLoadAnimation']!),
                              ),
                          ].divide(SizedBox(width: 10.0)),
                        ),
                        onEnter: ((event) async {
                          safeSetState(
                              () => _model.addressRegionHovered = true);
                        }),
                        onExit: ((event) async {
                          safeSetState(
                              () => _model.addressRegionHovered = false);
                        }),
                      ),
                    ),
                  ].divide(SizedBox(height: 12.0)),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.bed_rounded,
                          color: FlutterFlowTheme.of(context).neutral300,
                          size: 24.0,
                        ),
                        Text(
                          valueOrDefault<String>(
                            widget!.bedsNum?.toString(),
                            '0',
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Nunito',
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                              ),
                        ),
                      ].divide(SizedBox(width: 10.0)),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.people_outline,
                          color: FlutterFlowTheme.of(context).neutral300,
                          size: 24.0,
                        ),
                        Text(
                          valueOrDefault<String>(
                            widget!.bathNum?.toString(),
                            '0',
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Nunito',
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                              ),
                        ),
                      ].divide(SizedBox(width: 10.0)),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.compressArrowsAlt,
                          color: FlutterFlowTheme.of(context).neutral300,
                          size: 24.0,
                        ),
                        Text(
                          '${valueOrDefault<String>(
                            widget!.sqfNum?.toString(),
                            '0',
                          )}M',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Nunito',
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                              ),
                        ),
                      ].divide(SizedBox(width: 10.0)),
                    ),
                  ].divide(SizedBox(width: 25.0)),
                ),
              ].divide(SizedBox(height: 12.0)),
            ),
          ),
        ],
      ),
    );
  }
}
