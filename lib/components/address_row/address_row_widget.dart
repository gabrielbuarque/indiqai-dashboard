import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'address_row_model.dart';
export 'address_row_model.dart';

class AddressRowWidget extends StatefulWidget {
  const AddressRowWidget({
    super.key,
    required this.address,
  });

  final String? address;

  @override
  State<AddressRowWidget> createState() => _AddressRowWidgetState();
}

class _AddressRowWidgetState extends State<AddressRowWidget>
    with TickerProviderStateMixin {
  late AddressRowModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddressRowModel());

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
      width: 200.0,
      decoration: const BoxDecoration(),
      child: MouseRegion(
        opaque: false,
        cursor: MouseCursor.defer ?? MouseCursor.defer,
        onEnter: ((event) async {
          safeSetState(() => _model.addressRegionHovered = true);
        }),
        onExit: ((event) async {
          safeSetState(() => _model.addressRegionHovered = false);
        }),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.location_on_outlined,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 16.0,
            ),
            Flexible(
              child: Text(
                widget.address!,
                maxLines: 1,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Nunito',
                      color: FlutterFlowTheme.of(context).secondaryText,
                      letterSpacing: 0.0,
                    ),
              ),
            ),
            if (_model.addressRegionHovered ?? true)
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                child: Icon(
                  Icons.launch_outlined,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 16.0,
                ).animateOnPageLoad(animationsMap['iconOnPageLoadAnimation']!),
              ),
          ].divide(const SizedBox(width: 10.0)),
        ),
      ),
    );
  }
}
