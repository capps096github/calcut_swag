import '../swag_exporter.dart';

///This provides hints to the user on what they should do when on a given screen
class HintText extends StatelessWidget {
  const HintText({
    Key? key,
    required this.text,
    required this.isSelected,
    required this.backgroundColor,
    required this.textColor,
  }) : super(key: key);

  ///selected
  final bool isSelected;

  ///backgroundColor
  final Color backgroundColor, textColor;

  ///Text
  final String text;

  @override
  Widget build(BuildContext context) {
    //App Theme colorScheme
    final textTheme = Theme.of(context).textTheme;

    return AnimatedContainer(
      duration: quarterSeconds,
      margin: const EdgeInsets.all(4),
      padding: const EdgeInsets.symmetric(
        horizontal: 4,
        vertical: 4,
      ),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          AnimatedSwitcher(
            duration: quarterSeconds,
            reverseDuration: quarterSeconds,
            child: Icon(
              isSelected
                  ? Icons.tips_and_updates
                  : Icons.tips_and_updates_outlined,
              color: textColor,
            ),
          ),
          const HorizontalSpacing(of: 4),
          Flexible(
            child: AnimatedSwitcher(
              duration: quarterSeconds,
              reverseDuration: quarterSeconds,
              child: Text(
                text,
                key: ValueKey(isSelected),
                textAlign: TextAlign.center,
                style: textTheme.caption!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: textColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
