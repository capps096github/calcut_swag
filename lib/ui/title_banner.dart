// greeting
// this shows Good Morning, Good Afternoon and Good Evening respectively at their times
import '../swag_exporter.dart';

class TitleBanner extends StatelessWidget {
  const TitleBanner({
    Key? key,
    required this.title,
    this.textColor = calcutColor,
  }) : super(key: key);
// title to place in the banner
  final String title;

  final Color textColor;

  @override
  Widget build(BuildContext context) {
    //  check if we are on Desktop
    final isDesktop = CalcutResponsive.isDesktop(context);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AnimatedSwitcher(
        duration: quarterSeconds,
        child: Text(
          title,
          key: ValueKey(title),
          textAlign: TextAlign.center,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: GoogleFonts.spartan(
            fontSize: isDesktop ? 25 : 22.5,
            color: textColor,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }
}
