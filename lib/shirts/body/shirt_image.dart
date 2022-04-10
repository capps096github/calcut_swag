import '../../swag_exporter.dart';

class ShirtImage extends ConsumerWidget {
  const ShirtImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
// image size
    final imageSize = ref.watch(shirtImageSizeProvider.state).state / 1.5;
// image
    return Center(
      child: AnimatedContainer(
        duration: twoSeconds,
        height: imageSize,
        width: imageSize,
        child: Image.asset(
          "images/calcut_shirt.png",
          key: ValueKey(imageSize),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

// image size state provider
final shirtImageSizeProvider = StateProvider<double>((ref) {
  return 270;
});
