import '../swag_exporter.dart';
import 'body/body.dart';
import 'navbar.dart';

class CalcutShirt extends StatelessWidget {
  const CalcutShirt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //App Theme colorScheme
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorScheme.background,
        automaticallyImplyLeading: false,
        title: Image.asset(
          "icons/calcut_navy.png",
          height: 40,
          width: 40,
        ),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: TitleBanner(
            title: 'My Calcut Shirt',
            textColor: calcutColor,
          ),
        ),
      ),
      body: const CalcutShirtBody(),
      bottomNavigationBar: const CalcutShirtNavBar(),
    );
  }
}
