
import '../swag_exporter.dart';

final ThemeData calcutTheme = _buildCalcutTheme();

//* Function to generate the theme
ThemeData _buildCalcutTheme() {
  final ThemeData calcutBaseTheme = ThemeData.light();
  return calcutBaseTheme.copyWith(
    backgroundColor: calcutBackground,
    scaffoldBackgroundColor: calcutBackground,
    primaryColor: calcutColor,
    colorScheme: calcutBaseTheme.colorScheme.copyWith(
      //* -- Primary
      // primary: calcutMaroon,
      // primary: calcutBlack,
      primary: calcutColor,
      onPrimary: calcutWhite,
      //* -- Secondary
      secondary: calcutAmber,
      onSecondary: calcutColor,
      //* -- Background
      background: calcutBackground,
      onBackground: calcutColor,
      //* -- Surface
      surface: calcutColor,
      onSurface: calcutBackground,
      //* -- Error
      error: calcutError,
      onError: calcutWhite,
      //* -- Shadow
      shadow: calcutBlack,
    ),
    //* -- text themes
    textTheme: _buildCalcutTextTheme(base: calcutBaseTheme.textTheme),
    textSelectionTheme: TextSelectionThemeData(
      selectionColor: calcutColor.withOpacity(.25),
      cursorColor: calcutColor,
    ),

    //* -- Visual Density
    visualDensity: VisualDensity.adaptivePlatformDensity,
    //* -- Appbar
    appBarTheme: AppBarTheme(
      centerTitle: true,
      elevation: 0,
      titleTextStyle: GoogleFonts.spartan(
        fontSize: 25,
        fontWeight: FontWeight.w700,
        color: calcutWhite,
      ),
    ),
    //* -- tooltip
    tooltipTheme: TooltipThemeData(
      textStyle: const TextStyle(color: calcutColor),
      decoration: BoxDecoration(
        color: calcutWhite,
        borderRadius: BorderRadius.circular(6),
      ),
    ),
    //* -- text button
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        padding: MaterialStateProperty.all(
          const EdgeInsets.all(10),
        ),
      ),
    ),
  );
}

//* Calcut Text theme
TextTheme _buildCalcutTextTheme({required TextTheme base}) {
  return base
      .copyWith(
        headline5: base.headline5!.copyWith(
          fontWeight: FontWeight.w500,
          fontFamily: GoogleFonts.assistant().fontFamily,
        ),
        headline6: base.headline6!.copyWith(
          fontSize: 18.0,
          fontWeight: FontWeight.w700,
          fontFamily: GoogleFonts.assistant().fontFamily,
        ),
        caption: base.caption!.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 12.0,
          fontFamily: GoogleFonts.assistant().fontFamily,
        ),
        bodyText1: base.bodyText1!.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 16.0,
          fontFamily: GoogleFonts.assistant().fontFamily,
        ),
        bodyText2: base.bodyText2!.copyWith(
          fontWeight: FontWeight.bold,
          fontSize: 14.0,
          height: 1.5,
          letterSpacing: .2,
          fontFamily: GoogleFonts.assistant().fontFamily,
        ),
      )
      .apply(
        fontFamily: GoogleFonts.spartan().fontFamily,
        displayColor: calcutColor,
        bodyColor: calcutColor,
      );
}
