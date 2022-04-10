import '../../../swag_exporter.dart';
import 'page_flip_provider.dart';
import 'shirt_image.dart';


// This is the back part of the Shirt
class BackShirt extends ConsumerWidget {
  const BackShirt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
      final pageFlipKey = ref.watch(pageFlipKeyProvider);
    return InkWell(
      onTap: () => pageFlipKey.currentState?.flip(),
      child: const ShirtImage(
        imagePath: 'calcut_back',
      ),
    );
  }
}