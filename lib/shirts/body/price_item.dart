import '../../swag_exporter.dart';
import 'number/number_provider.dart';

class PriceItem extends ConsumerWidget {
  const PriceItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final numberOfShirts = ref.watch(numberOfShirtsProvider.state).state;

    // item price
    final itemPrice = 20000 * numberOfShirts;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SectionTitle(sectionText: "Price"),
          const VerticalSpacing(of: 8),
          // text title
          Text(
            priceFormatter.format(itemPrice),
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
