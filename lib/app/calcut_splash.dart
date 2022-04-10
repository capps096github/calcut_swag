
import '../swag_exporter.dart';

class CalcutSplash extends StatelessWidget {
  const CalcutSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: calcutColor,
      body: ExpandedScrollingColumn(
        children: [
          Expanded(
            child: Center(
              child: SvgPicture.asset("icons/calcut_vector.svg"),
            ),
          ),
          const VerticalSpacing(of: 4),
          // from THE C APPS TEAM
          const FromCAPPS(),
        ],
      ),
    );
  }
}
