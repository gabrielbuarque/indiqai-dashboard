// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class FlutterFlowTheme {
  static FlutterFlowTheme of(BuildContext context) {
    return LightModeTheme();
  }

  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary;
  late Color secondary;
  late Color tertiary;
  late Color alternate;
  late Color primaryText;
  late Color secondaryText;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color accent1;
  late Color accent2;
  late Color accent3;
  late Color accent4;
  late Color success;
  late Color warning;
  late Color error;
  late Color info;

  late Color brand200;
  late Color gray400;
  late Color textFieldBachGround;
  late Color success100;
  late Color error100;
  late Color brand100;
  late Color bgWhite;
  late Color brand900;
  late Color brand800;
  late Color brand700;
  late Color brand600;
  late Color brand400;
  late Color brand300;
  late Color neutral900;
  late Color neutral800;
  late Color neutral700;
  late Color neutral600;
  late Color neutral500;
  late Color neutral400;
  late Color neutral300;
  late Color neutral200;
  late Color neutral100;
  late Color white0;
  late Color success900;
  late Color success800;
  late Color success700;
  late Color success600;
  late Color success500;
  late Color success400;
  late Color success300;
  late Color success200;
  late Color error900;
  late Color error800;
  late Color error700;
  late Color error600;
  late Color error500;
  late Color error400;
  late Color error300;
  late Color error200;
  late Color warning900;
  late Color warning800;
  late Color warning700;
  late Color warning600;
  late Color warning500;
  late Color warning400;
  late Color warning300;
  late Color warning200;
  late Color warning100;
  late Color information900;
  late Color information800;
  late Color information700;
  late Color information600;
  late Color information500;
  late Color information400;
  late Color information300;
  late Color information200;
  late Color information100;
  late Color blurBg;
  late Color bgModal;
  late Color bgBlurWhite;

  @Deprecated('Use displaySmallFamily instead')
  String get title1Family => displaySmallFamily;
  @Deprecated('Use displaySmall instead')
  TextStyle get title1 => typography.displaySmall;
  @Deprecated('Use headlineMediumFamily instead')
  String get title2Family => typography.headlineMediumFamily;
  @Deprecated('Use headlineMedium instead')
  TextStyle get title2 => typography.headlineMedium;
  @Deprecated('Use headlineSmallFamily instead')
  String get title3Family => typography.headlineSmallFamily;
  @Deprecated('Use headlineSmall instead')
  TextStyle get title3 => typography.headlineSmall;
  @Deprecated('Use titleMediumFamily instead')
  String get subtitle1Family => typography.titleMediumFamily;
  @Deprecated('Use titleMedium instead')
  TextStyle get subtitle1 => typography.titleMedium;
  @Deprecated('Use titleSmallFamily instead')
  String get subtitle2Family => typography.titleSmallFamily;
  @Deprecated('Use titleSmall instead')
  TextStyle get subtitle2 => typography.titleSmall;
  @Deprecated('Use bodyMediumFamily instead')
  String get bodyText1Family => typography.bodyMediumFamily;
  @Deprecated('Use bodyMedium instead')
  TextStyle get bodyText1 => typography.bodyMedium;
  @Deprecated('Use bodySmallFamily instead')
  String get bodyText2Family => typography.bodySmallFamily;
  @Deprecated('Use bodySmall instead')
  TextStyle get bodyText2 => typography.bodySmall;

  String get displayLargeFamily => typography.displayLargeFamily;
  TextStyle get displayLarge => typography.displayLarge;
  String get displayMediumFamily => typography.displayMediumFamily;
  TextStyle get displayMedium => typography.displayMedium;
  String get displaySmallFamily => typography.displaySmallFamily;
  TextStyle get displaySmall => typography.displaySmall;
  String get headlineLargeFamily => typography.headlineLargeFamily;
  TextStyle get headlineLarge => typography.headlineLarge;
  String get headlineMediumFamily => typography.headlineMediumFamily;
  TextStyle get headlineMedium => typography.headlineMedium;
  String get headlineSmallFamily => typography.headlineSmallFamily;
  TextStyle get headlineSmall => typography.headlineSmall;
  String get titleLargeFamily => typography.titleLargeFamily;
  TextStyle get titleLarge => typography.titleLarge;
  String get titleMediumFamily => typography.titleMediumFamily;
  TextStyle get titleMedium => typography.titleMedium;
  String get titleSmallFamily => typography.titleSmallFamily;
  TextStyle get titleSmall => typography.titleSmall;
  String get labelLargeFamily => typography.labelLargeFamily;
  TextStyle get labelLarge => typography.labelLarge;
  String get labelMediumFamily => typography.labelMediumFamily;
  TextStyle get labelMedium => typography.labelMedium;
  String get labelSmallFamily => typography.labelSmallFamily;
  TextStyle get labelSmall => typography.labelSmall;
  String get bodyLargeFamily => typography.bodyLargeFamily;
  TextStyle get bodyLarge => typography.bodyLarge;
  String get bodyMediumFamily => typography.bodyMediumFamily;
  TextStyle get bodyMedium => typography.bodyMedium;
  String get bodySmallFamily => typography.bodySmallFamily;
  TextStyle get bodySmall => typography.bodySmall;

  Typography get typography => ThemeTypography(this);
}

class LightModeTheme extends FlutterFlowTheme {
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary = const Color(0xFF7541EE);
  late Color secondary = const Color(0xFFF4B512);
  late Color tertiary = const Color(0xFFFB517A);
  late Color alternate = const Color(0xFFE0E3E7);
  late Color primaryText = const Color(0xFF171719);
  late Color secondaryText = const Color(0xFF76777E);
  late Color primaryBackground = const Color(0xFFFFFFFF);
  late Color secondaryBackground = const Color(0xFFFAFAFA);
  late Color accent1 = const Color(0x607541EE);
  late Color accent2 = const Color(0x7DF4B512);
  late Color accent3 = const Color(0x6AFB517A);
  late Color accent4 = const Color(0xCCFFFFFF);
  late Color success = const Color(0xFF66B949);
  late Color warning = const Color(0xFFF2C94C);
  late Color error = const Color(0xFFFF4332);
  late Color info = const Color(0xFFFFFFFF);

  late Color brand200 = Color(0xFFB7CFFC);
  late Color gray400 = Color(0xFFA9B4CD);
  late Color textFieldBachGround = Color(0xFFF4F4F4);
  late Color success100 = Color(0xFFCFFCD4);
  late Color error100 = Color(0xFFFFE6D6);
  late Color brand100 = Color(0xFFDBE8FD);
  late Color bgWhite = Color(0x74FFFFFF);
  late Color brand900 = Color(0xFF0E1D70);
  late Color brand800 = Color(0xFF192252);
  late Color brand700 = Color(0xFF2540A8);
  late Color brand600 = Color(0xFF3658C9);
  late Color brand400 = Color(0xFF769AF2);
  late Color brand300 = Color(0xFF92B2F8);
  late Color neutral900 = Color(0xFF192252);
  late Color neutral800 = Color(0xFF2A3563);
  late Color neutral700 = Color(0xFF424F7B);
  late Color neutral600 = Color(0xFF606D93);
  late Color neutral500 = Color(0xFF848FAC);
  late Color neutral400 = Color(0xFFA9B4CD);
  late Color neutral300 = Color(0xFFC5D0E6);
  late Color neutral200 = Color(0xFFDFE8F6);
  late Color neutral100 = Color(0xFFEFF3FA);
  late Color white0 = Color(0xFFFFFFFF);
  late Color success900 = Color(0xFF16671A);
  late Color success800 = Color(0xFF1A6D66);
  late Color success700 = Color(0xFF298876);
  late Color success600 = Color(0xFF3BA285);
  late Color success500 = Color(0xFF52BD94);
  late Color success400 = Color(0xFF7BD7AB);
  late Color success300 = Color(0xFF9BEBBC);
  late Color success200 = Color(0xFFA1F9B4);
  late Color error900 = Color(0xFF7A0925);
  late Color error800 = Color(0xFF930F25);
  late Color error700 = Color(0xFFB71926);
  late Color error600 = Color(0xFFDB2424);
  late Color error500 = Color(0xFFFF4332);
  late Color error400 = Color(0xFFFF7E65);
  late Color error300 = Color(0xFFFFA283);
  late Color error200 = Color(0xFFFFC7AD);
  late Color warning900 = Color(0xFF7A4B04);
  late Color warning800 = Color(0xFF935F07);
  late Color warning700 = Color(0xFFB77C0B);
  late Color warning600 = Color(0xFFDB9B10);
  late Color warning500 = Color(0xFFFFBD16);
  late Color warning400 = Color(0xFFFFD250);
  late Color warning300 = Color(0xFFFFDF73);
  late Color warning200 = Color(0xFFFFECA1);
  late Color warning100 = Color(0xFFFFF7D0);
  late Color information900 = Color(0xFF071561);
  late Color information800 = Color(0xFF0D1F76);
  late Color information700 = Color(0xFF142D92);
  late Color information600 = Color(0xFF1D3EAF);
  late Color information500 = Color(0xFF2952CC);
  late Color information400 = Color(0xFF597FE0);
  late Color information300 = Color(0xFF7C9FEF);
  late Color information200 = Color(0xFFAAC4F9);
  late Color information100 = Color(0xFFD4E2FC);
  late Color blurBg = Color(0x5AFFFFFF);
  late Color bgModal = Color(0x4DFFFFFF);
  late Color bgBlurWhite = Color(0x65FAFAFA);
}

abstract class Typography {
  String get displayLargeFamily;
  TextStyle get displayLarge;
  String get displayMediumFamily;
  TextStyle get displayMedium;
  String get displaySmallFamily;
  TextStyle get displaySmall;
  String get headlineLargeFamily;
  TextStyle get headlineLarge;
  String get headlineMediumFamily;
  TextStyle get headlineMedium;
  String get headlineSmallFamily;
  TextStyle get headlineSmall;
  String get titleLargeFamily;
  TextStyle get titleLarge;
  String get titleMediumFamily;
  TextStyle get titleMedium;
  String get titleSmallFamily;
  TextStyle get titleSmall;
  String get labelLargeFamily;
  TextStyle get labelLarge;
  String get labelMediumFamily;
  TextStyle get labelMedium;
  String get labelSmallFamily;
  TextStyle get labelSmall;
  String get bodyLargeFamily;
  TextStyle get bodyLarge;
  String get bodyMediumFamily;
  TextStyle get bodyMedium;
  String get bodySmallFamily;
  TextStyle get bodySmall;
}

class ThemeTypography extends Typography {
  ThemeTypography(this.theme);

  final FlutterFlowTheme theme;

  String get displayLargeFamily => 'Nunito';
  TextStyle get displayLarge => GoogleFonts.getFont(
        'Nunito',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 64.0,
      );
  String get displayMediumFamily => 'Nunito';
  TextStyle get displayMedium => GoogleFonts.getFont(
        'Nunito',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 44.0,
      );
  String get displaySmallFamily => 'Nunito';
  TextStyle get displaySmall => GoogleFonts.getFont(
        'Nunito',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 36.0,
      );
  String get headlineLargeFamily => 'Nunito';
  TextStyle get headlineLarge => GoogleFonts.getFont(
        'Nunito',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 32.0,
      );
  String get headlineMediumFamily => 'Nunito';
  TextStyle get headlineMedium => GoogleFonts.getFont(
        'Nunito',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 24.0,
      );
  String get headlineSmallFamily => 'Nunito';
  TextStyle get headlineSmall => GoogleFonts.getFont(
        'Nunito',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 24.0,
      );
  String get titleLargeFamily => 'Nunito';
  TextStyle get titleLarge => GoogleFonts.getFont(
        'Nunito',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 18.0,
      );
  String get titleMediumFamily => 'Nunito';
  TextStyle get titleMedium => GoogleFonts.getFont(
        'Nunito',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 18.0,
      );
  String get titleSmallFamily => 'Nunito';
  TextStyle get titleSmall => GoogleFonts.getFont(
        'Nunito',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 16.0,
      );
  String get labelLargeFamily => 'Nunito';
  TextStyle get labelLarge => GoogleFonts.getFont(
        'Nunito',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 16.0,
      );
  String get labelMediumFamily => 'Nunito';
  TextStyle get labelMedium => GoogleFonts.getFont(
        'Nunito',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 14.0,
      );
  String get labelSmallFamily => 'Nunito';
  TextStyle get labelSmall => GoogleFonts.getFont(
        'Nunito',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 12.0,
      );
  String get bodyLargeFamily => 'Nunito';
  TextStyle get bodyLarge => GoogleFonts.getFont(
        'Nunito',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  String get bodyMediumFamily => 'Nunito';
  TextStyle get bodyMedium => GoogleFonts.getFont(
        'Nunito',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
      );
  String get bodySmallFamily => 'Nunito';
  TextStyle get bodySmall => GoogleFonts.getFont(
        'Nunito',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 12.0,
      );
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    FontStyle? fontStyle,
    bool useGoogleFonts = true,
    TextDecoration? decoration,
    double? lineHeight,
    List<Shadow>? shadows,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily!,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              letterSpacing: letterSpacing ?? this.letterSpacing,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              decoration: decoration,
              height: lineHeight,
              shadows: shadows,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              letterSpacing: letterSpacing,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              decoration: decoration,
              height: lineHeight,
              shadows: shadows,
            );
}
