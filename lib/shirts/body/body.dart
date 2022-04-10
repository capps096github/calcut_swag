import '../../swag_exporter.dart';
import 'price/price_item.dart';
import 'shirt_image.dart';
import 'size_item/size_item_list.dart';

class CalcutShirtBody extends ConsumerWidget {
  const CalcutShirtBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const ExpandedScrollingColumn(
      children: [
        // image
        ShirtImage(),

        // divider
        ThickHorizontalDivider(
          dividerColor: calcutColor,
          dividerWidth: 60,
          margin: EdgeInsets.symmetric(vertical: 8),
        ),


        // price
        PriceItem(),

        VerticalSpacing(of: 10),

        // selectors
        SwagSizeSelectorsList(),
      ],
    );
  }
}
