import 'package:calcut_swag/shirts/body/image/shirt_image.dart';

import '../../../swag_exporter.dart';
import 'page_flip_provider.dart';

// This is the front part of the shirt
class FrontShirt extends ConsumerWidget {
  const FrontShirt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageFlipKey = ref.watch(pageFlipKeyProvider);
    return InkWell(
      onTap: () => pageFlipKey.currentState?.flip(),
      child: const ShirtImage(
        imagePath: 'calcut_shirt',
      ),
    );
  }
}
