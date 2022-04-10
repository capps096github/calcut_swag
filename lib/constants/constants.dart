import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';

///Formats the date to a string
final dateFormatter = DateFormat('EEE, dd MMMM yyyy - hh:mm a');
final savedDateFormatter = DateFormat('EEEE, dd MMMM yyyy');

/// regex to check whether a string is made up of only spaces
final RegExp spaceOnlyRegex = RegExp(r'^\s*$');

///This is the measure we have used to the svg image heights and widths used in the app
const double svgImageSize = 200;

/// check if the current platform is Windows
final bool isCalcutWindows = (defaultTargetPlatform == TargetPlatform.windows);

/// check if the current platform is Windows or Web
const bool isCalcutWeb = (kIsWeb);

/// check if the current platform is Windows or Web
final bool isCalcutWebOrWindows = (isCalcutWindows || isCalcutWeb);

// official Calcut SliverApp Bar height
const double sliverAppBarHeight = 80;

// drawer width on desktop (when open)
const double sideBarDesktopWidth = 300;

// drawer width on tablet when closed
const double sideBarTabletWidth = 90;

// check if we are in debug mode
const bool isCalcutDebugMode = kDebugMode;


// tile size
const double tileSize = 50;
