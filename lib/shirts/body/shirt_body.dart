
import '../../swag_exporter.dart';
import 'shirt_details.dart';

class CalcutShirtBody extends StatelessWidget {
  const CalcutShirtBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      clipBehavior: Clip.antiAlias,
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(10),
        topRight: Radius.circular(10),
      ),
      child: Container(
        color: calcutBackground,
        child: const Center(child: CalcutShirtDetails()),
      ),
    );
  }
}
