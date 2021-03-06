import '../../../swag_exporter.dart';
import 'number_of_shirts.dart';

class ShirtNumbers extends StatelessWidget {
  const ShirtNumbers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: const [
        SectionTitle(sectionText: "Number of Shirts"),
        VerticalSpacing(of: 8),
        NumberOfShirts(),
      ],
    );
  }
}
