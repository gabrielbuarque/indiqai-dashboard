import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

double responsiveMaxWidth(
  double howManySlices,
  double slices,
  int tabletSlices,
  double screenWidth,
  double lRpaddings,
) {
  double mobileWid = 479;
  double desktopWid = 1280;

  double wdesktopmenu = 290;
  double wtabletmenu = 90;

  if (screenWidth <= mobileWid) {
    return (screenWidth);
  }
  if (screenWidth > mobileWid && screenWidth < desktopWid) {
    double eachSectionSize =
        ((screenWidth - (lRpaddings + wtabletmenu)) / tabletSlices);
    double section = eachSectionSize * howManySlices;
    return section;
    //return (wid - (lRpaddings + wtabletmenu));
  }
  if (screenWidth >= desktopWid) {
    double eachSectionSize =
        ((screenWidth - (lRpaddings + wdesktopmenu)) / slices);
    double section = eachSectionSize * howManySlices;
    return section;
  }
  return 420;
}

int calculatePointsByPrice(
  int price,
  int scallingFactor,
  int pointsMultiplier,
) {
  return (price * pointsMultiplier) * scallingFactor;
}
