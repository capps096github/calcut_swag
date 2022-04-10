import '../swag_exporter.dart';

class FromCAPPS extends StatelessWidget {
  const FromCAPPS({
    Key? key,
    this.showBuiltBy = true,
    this.showIntellectualProperty = false,
    this.textColor = calcutWhite,
    this.heartColor = calcutError,
  }) : super(key: key);

  final bool showBuiltBy, showIntellectualProperty;

  final Color textColor, heartColor;

  @override
  Widget build(BuildContext context) {
    final textStyle = GoogleFonts.assistant(
      color: textColor,
      fontWeight: FontWeight.w400,
      fontSize: 12,
    );

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (showBuiltBy)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: Text(
                    'Built with ',
                    maxLines: 1,
                    style: textStyle,
                  ),
                ),
                Icon(
                  Icons.favorite,
                  color: heartColor,
                  size: 14,
                ),
                Flexible(
                  child: Text(
                    ' by ',
                    style: textStyle,
                  ),
                ),
              ],
            ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2.0),
                  child: ThickHorizontalDivider(
                    thickness: 1.5,
                    dividerColor: textColor,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  'THE C APPS TEAM',
                  maxLines: 1,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.spartan(
                    fontSize: 14,
                    color: textColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2.0),
                  child: ThickHorizontalDivider(
                    thickness: 1.5,
                    dividerColor: textColor,
                  ),
                ),
              ),
            ],
          ),
          Text(
            '© ${DateTime.now().year}',
            style: textStyle,
          ),
          if (showIntellectualProperty)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Text(
                intellectualProperty,
                textAlign: TextAlign.center,
                style: CalcutTextStyles.caption.copyWith(
                  color: calcutGrey,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
