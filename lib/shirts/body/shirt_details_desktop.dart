import '../../swag_exporter.dart';
import 'image/shirt_image_flipper.dart';
import 'number/shirt_numbers.dart';
import 'price_item.dart';
import 'size_item/size_item_list.dart';

class CalcutShirtDetailsDesktop extends ConsumerWidget {
  const CalcutShirtDetailsDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        // image
        Expanded(
          child: ListView(
            shrinkWrap: true,
            children: const [
              // divider
              Center(
                child: ThickHorizontalDivider(
                  dividerColor: calcutError,
                  dividerWidth: 60,
                  margin: EdgeInsets.symmetric(vertical: 8),
                ),
              ),

              ShirtImageFlipper(),
            ],
          ),
        ),
        const Expanded(
          child: ExpandedScrollingColumn(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              // divider
              ThickHorizontalDivider(
                dividerColor: calcutError,
                dividerWidth: 60,
                margin: EdgeInsets.symmetric(vertical: 8),
              ),

              // price
              PriceItem(),
              // selectors
              SwagSizeSelectorsList(),

              VerticalSpacing(of: 10),

              // number of items
              ShirtNumbers(),
            ],
          ),
        ),
      ],
    );
  }
}
