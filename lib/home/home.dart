import '../swag_exporter.dart';

class CalcutSwagHome extends StatelessWidget {
  const CalcutSwagHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Image.asset(
          "icons/calcut_white.png",
          height: 40,
          width: 40,
        ),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: TitleBanner(
            title: 'Hello',
            textColor: calcutWhite,
          ),
        ),
      ),
    );
  }
}
