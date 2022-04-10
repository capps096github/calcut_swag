import '../../../swag_exporter.dart';

class PriceItem extends ConsumerWidget {
  const PriceItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // text title
          Text(
            "Price",
            style: GoogleFonts.spartan(
              fontSize: 20,
              color: calcutError,
              fontWeight: FontWeight.w700,
            ),
          ),
          const VerticalSpacing(of: 8),
          // use wrap instead
          // text title
          const Text(
            "Shs. 20,000",
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
