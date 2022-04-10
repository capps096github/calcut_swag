import '../../../swag_exporter.dart';
import '../size_item/size_item_provider.dart';
import 'back_shirt.dart';
import 'front_shirt.dart';
import 'page_flip_provider.dart';

class ShirtImageFlipper extends ConsumerWidget {
  const ShirtImageFlipper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    // check if we are on mobile
    final isMobile = CalcutResponsive.isMobile(context);

    final pageFlipKey = ref.watch(pageFlipKeyProvider);

    // get screen height
    final screenHeight = MediaQuery.of(context).size.height;

    // side
    final isFrontSide = ref.watch(isFrontSideProvider.state).state;

    // swagSizeIndex
    final swagSizeIndex = ref.watch(selectedSizeIndexProvider.state).state;

// is large or extra large
    final isLarge = swagSizeIndex == 2;

    final isExtraLarge = swagSizeIndex == 3;

    return AnimatedContainer(
      duration: aHundredMilliseconds,
      height: isMobile
          ? (isLarge
              ? screenHeight * 0.75
              : isExtraLarge
                  ? screenHeight * 0.9
                  : screenHeight * 0.6)
          : screenHeight,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Center(
            child: PageFlipBuilder(
              key: pageFlipKey,
              frontBuilder: (_) => const FrontShirt(),
              backBuilder: (_) => const BackShirt(),
              // flip the axis to horizontal
              flipAxis: Axis.horizontal,
              // customize tilt value
              maxTilt: 0.003,
              // customize scale
              maxScale: 0.2,
              // be notified when the flip has completed
              // ignore: avoid_print
              onFlipComplete: (isFrontSide) {
                ref.read(isFrontSideProvider.notifier).state = isFrontSide;
                // print('isFrontSide: $isFrontSide');
              },
            ),
          ),
          // Hint
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: HintText(
              text:
                  'Click on the Shirt to show ${isFrontSide ? 'Back' : 'Front'} Side',
              backgroundColor: calcutError,
              textColor: calcutBackground,
              isSelected: isFrontSide,
            ),
          ),
        ],
      ),
    );
  }
}

// Side we are showing now
final isFrontSideProvider = StateProvider<bool>((ref) {
  return true;
});
