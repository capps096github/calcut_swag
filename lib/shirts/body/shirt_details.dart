import '../../swag_exporter.dart';
import 'image/shirt_image_flipper.dart';
import 'number/shirt_numbers.dart';
import 'price_item.dart';
import 'size_item/size_item_list.dart';

class CalcutShirtDetails extends ConsumerWidget {
  const CalcutShirtDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const ExpandedScrollingColumn(
      children: [
        // divider
        ThickHorizontalDivider(
          dividerColor: calcutError,
          dividerWidth: 60,
          margin: EdgeInsets.symmetric(vertical: 8),
        ),

        // price
        PriceItem(),
        VerticalSpacing(of: 10),

        // image
        ShirtImageFlipper(),

        VerticalSpacing(of: 10),

        // selectors
        SwagSizeSelectorsList(),

        VerticalSpacing(of: 10),

        // number of items
        ShirtNumbers(),
      ],
    );
  }
}
