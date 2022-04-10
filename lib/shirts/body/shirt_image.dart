import '../../swag_exporter.dart';

class ShirtImage extends ConsumerWidget {
  const ShirtImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
// image size
    final imageSize = ref.watch(shirtImageSizeProvider.state).state;
// image
    return AnimatedSwitcher(
      duration: oneSecond,
      transitionBuilder: (child, animation) {
        return ScaleTransition(
          scale: animation,
          child: child,
        );
      },
      child: Image.asset(
        "images/calcut_shirt.png",
        key: ValueKey(imageSize),
        fit: BoxFit.cover,
        height: imageSize,
        width: imageSize,
      ),
    );
  }
}

// image size state provider
final shirtImageSizeProvider = StateProvider<double>((ref) {
  return 270;
});
