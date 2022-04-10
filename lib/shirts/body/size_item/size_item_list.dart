import '../../../swag_exporter.dart';
import 'size_selector.dart';
import 'swag_items_data.dart';

class SwagSizeSelectorsList extends ConsumerWidget {
  const SwagSizeSelectorsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // text title
        Text(
          "Select Size",
          style: GoogleFonts.spartan(
            fontSize: 20,
            color: calcutError,
            fontWeight: FontWeight.w700,
          ),
        ),
        const VerticalSpacing(of: 8),
        // use wrap instead
        Wrap(
          spacing: 2,
          runSpacing: 2,
          children: swagSizeItems.map((sizeItem) {
            return SwagSizeSelector(
              sizeItem: sizeItem,
              itemIndex: swagSizeItems.indexOf(sizeItem),
            );
          }).toList(),
        ),
      ],
    );
  }
}
