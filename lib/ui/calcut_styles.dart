import '../swag_exporter.dart';

class FontSizes {
  /// Provides the ability to nudge the app-wide font scale in either direction
  static double get scale => 1;
  static double get s9 => 9 * scale;
  static double get s10 => 10 * scale;
  static double get s11 => 11 * scale;
  static double get s12 => 12 * scale;
  static double get s14 => 14 * scale;
  static double get s16 => 16 * scale;
  static double get s24 => 24 * scale;
  static double get s48 => 48 * scale;
}

class Corners {
  static const double sm = 3;
  static const BorderRadius smBorder = BorderRadius.all(smRadius);
  static const Radius smRadius = Radius.circular(sm);

  static const double med = 5;
  static const BorderRadius medBorder = BorderRadius.all(medRadius);
  static const Radius medRadius = Radius.circular(med);

  static const double lg = 8;
  static const BorderRadius lgBorder = BorderRadius.all(lgRadius);
  static const Radius lgRadius = Radius.circular(lg);
}

class Insets {
  static double scale = 1;
  static double offsetScale = 1;
  // Regular paddings
  static double get xs => 4 * scale;
  static double get sm => 8 * scale;
  static double get med => 12 * scale;
  static double get lg => 16 * scale;
  static double get xl => 32 * scale;
  // Offset, used for the edge of the window, or to separate large sections in the app
  static double get offset => 40 * offsetScale;
}

/// Official TextStyle for the app
class CalcutTextStyles {
  /// Declare a base style for each Family
  static TextStyle assistant = GoogleFonts.assistant(
    fontWeight: FontWeight.w400,
    color: calcutColor,
    height: 1,
  );

  static TextStyle spartan = GoogleFonts.spartan(
    fontWeight: FontWeight.w400,
    color: calcutColor,
    height: 1,
  );

// title:
  static TextStyle get calcutTitle => GoogleFonts.spartan(
        fontSize: 50,
        fontWeight: FontWeight.w800,
      );

// title1:
  static TextStyle get title1 => GoogleFonts.spartan(
        fontWeight: FontWeight.bold,
        fontSize: FontSizes.s16,
        height: 1.31,
        color: calcutColor,
      );

  // subtitle:
  static TextStyle get callout => GoogleFonts.assistant(
        fontSize: FontSizes.s14,
        letterSpacing: .5,
      );

  /// Declare a base style for the body
  static TextStyle get body1 => GoogleFonts.assistant(
        fontWeight: FontWeight.normal,
        fontSize: FontSizes.s14,
        height: 1.71,
      );

  /// for the body2 text style
  static TextStyle get body2 => GoogleFonts.assistant(
        fontSize: FontSizes.s12,
        height: 1.5,
        letterSpacing: .2,
      );

  /// for the body3 text style
  static TextStyle get body3 => GoogleFonts.assistant(
        fontSize: FontSizes.s12,
        height: 1.5,
        fontWeight: FontWeight.bold,
      );

  // caption:
  static TextStyle get caption => GoogleFonts.assistant(
        fontWeight: FontWeight.w500,
        fontSize: FontSizes.s10,
        height: 1.36,
        color: calcutColor,
      );
}
