import '../../../swag_exporter.dart';
import 'number_of_shirts.dart';

class ShirtNumbers extends StatelessWidget {
  const ShirtNumbers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // text title
        Text(
          "Number of Shirts",
          style: GoogleFonts.spartan(
            fontSize: 20,
            color: calcutError,
            fontWeight: FontWeight.w700,
          ),
        ),
        const VerticalSpacing(of: 8),

        const NumberOfShirts(),
      ],
    );
  }
}
