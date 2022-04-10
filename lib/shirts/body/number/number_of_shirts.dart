import 'package:calcut_swag/shirts/body/number/num_button.dart';

import '../../../swag_exporter.dart';
import 'number_provider.dart';

class NumberOfShirts extends ConsumerWidget {
  const NumberOfShirts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final numberOfShirts = ref.watch(numberOfShirtsProvider.state).state;
    final isTappable = numberOfShirts > 1;

    // text style for the rail item
    final railTextStyle = GoogleFonts.spartan(
      fontWeight: FontWeight.w700,
      fontSize: 17,
      color: calcutColor,
    );

    //
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // decrease
          AnimatedOpacity(
            opacity: isTappable ? 1 : 0.2,
            duration: aHundredMilliseconds,
            child: NumButton(
              iconData: Icons.remove_circle,
              onTap: isTappable
                  ? () {
                      //
                      ref.read(numberOfShirtsProvider.notifier).state -= 1;
                    }
                  : null,
              tooltip: "Decrease",
            ),
          ),

          // number of shirts
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '$numberOfShirts',
              textAlign: TextAlign.center,
              style: railTextStyle,
            ),
          ),

          // increase
          NumButton(
            iconData: Icons.add_circle,
            onTap: () {
              //
              ref.read(numberOfShirtsProvider.notifier).state += 1;
            },
            tooltip: "Increase",
          ),
        ],
      ),
    );
  }
}
