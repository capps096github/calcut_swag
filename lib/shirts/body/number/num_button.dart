import '../../../swag_exporter.dart';

class NumButton extends StatelessWidget {
  const NumButton({
    Key? key,
    required this.iconData,
    required this.onTap,
    required this.tooltip,
  }) : super(key: key);

// icon
  final IconData iconData;

// onTap
  final VoidCallback? onTap;

  // tooltip
  final String tooltip;

  @override
  Widget build(BuildContext context) {
    //App Theme colorScheme
    final colorScheme = Theme.of(context).colorScheme;
    final primary = colorScheme.primary;
    final onPrimary = colorScheme.onPrimary;
    final errorColor = colorScheme.error;


    // size container
    return Container(
      width: tileSize,
      height: tileSize,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: primary,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: primary.withOpacity(.2)),
      ),
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
      child: Tooltip(
        message: tooltip,
        textStyle: TextStyle(color: onPrimary),
        decoration: BoxDecoration(
          color: errorColor,
          borderRadius: BorderRadius.circular(4),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(6),
          onTap: onTap,
          child: Center(
            child: Icon(
              iconData,
              color: onPrimary,
            ),
          ),
        ),
      ),
    );
  }
}
