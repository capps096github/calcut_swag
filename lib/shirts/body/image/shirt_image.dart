import '../../../swag_exporter.dart';
import '../size_item/size_item_provider.dart';
import '../size_item/swag_items_data.dart';

class ShirtImage extends ConsumerWidget {
  const ShirtImage({
    required this.imagePath,
    Key? key,
  }) : super(key: key);

// image path
  final String imagePath;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
// image size Provider
    final shirtSize = ref.watch(shirtImageSizeProvider.state).state;

// image
    return AnimatedContainer(
      duration: quarterSeconds,
      height: shirtSize,
      width: shirtSize,
      margin: const EdgeInsets.all(8),
      child: Image.asset(
        "images/$imagePath.png",
        key: ValueKey(shirtSize),
      ),
    );
  }
}

// image size state provider
final shirtImageSizeProvider = StateProvider<double>((ref) {
  // swagSizeIndex
  final swagSizeIndex = ref.watch(selectedSizeIndexProvider.state).state;

  final sizeItem = swagSizeItems.elementAt(swagSizeIndex);

  //
  final shirtImageSize = sizeItem.value;

  return shirtImageSize;
});
