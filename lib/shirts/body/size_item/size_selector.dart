import '../../../swag_exporter.dart';
import 'size_item_provider.dart';
import 'swag_size.dart';

class SwagSizeSelector extends ConsumerWidget {
  const SwagSizeSelector({
    required this.sizeItem,
    required this.itemIndex,
    Key? key,
  }) : super(key: key);

  final SwagSize sizeItem;

// index, and this will be used to com[pare with the nav bar index to detect the selected item
  final int itemIndex;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // nav bar index
    final swagSizeIndex = ref.watch(selectedSizeIndexProvider.state).state;

    final isSelected = (itemIndex == swagSizeIndex);

    //App Theme colorScheme
    final colorScheme = Theme.of(context).colorScheme;
    final background = colorScheme.background;
    final primary = colorScheme.primary;
    // secondary
    final secondary = colorScheme.secondary;

    final iconColor = (isSelected ? background : primary);
    final backgroundColor = (isSelected ? primary : background);

// text style for the rail item
    final railTextStyle = GoogleFonts.spartan(
      fontWeight: isSelected ? FontWeight.w700 : null,
      fontSize: 17,
      color: iconColor,
    );

    // tile size
    const double tileSize = 50;

    return AnimatedSwitcher(
      duration: aHundredMilliseconds,
      transitionBuilder: (child, animation) {
        return ScaleTransition(
          scale: animation,
          child: child,
        );
      },
      child: Column(
        key: ValueKey(isSelected),
        mainAxisSize: MainAxisSize.min,
        children: [
          // size container
          Container(
            width: tileSize,
            height: tileSize,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(6),
              border: Border.all(
                color: primary.withOpacity(.2),
              ),
            ),
            margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
            child: Tooltip(
              message: sizeItem.tooltip,
              textStyle: TextStyle(color: primary),
              decoration: BoxDecoration(
                color: secondary,
                borderRadius: BorderRadius.circular(4),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(6),
                onTap: () {
                  ///[Notify Listeners]
                  ref.read(selectedSizeIndexProvider.state).state = itemIndex;
                },
                child: Center(
                  child: Text(
                    sizeItem.abbreviation,
                    style: railTextStyle,
                  ),
                ),
              ),
            ),
          ),

          if (isSelected) ...[
            // divider
            ThickHorizontalDivider(
              dividerColor: backgroundColor,
              dividerWidth: tileSize / 2,
              margin: const EdgeInsets.symmetric(vertical: 8),
            ),

            // size text
            Text(
              sizeItem.name,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: backgroundColor,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
