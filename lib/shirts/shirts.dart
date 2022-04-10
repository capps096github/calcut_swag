import '../swag_exporter.dart';
import 'body/shirt_body.dart';
import 'navbar.dart';

class CalcutShirt extends StatelessWidget {
  const CalcutShirt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //App Theme colorScheme
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: colorScheme.error,
      appBar: AppBar(
        backgroundColor: colorScheme.error,
        automaticallyImplyLeading: false,
        title: Image.asset(
          "icons/calcut_white.png",
          height: 40,
          width: 40,
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: TitleBanner(
            title: 'My Calcut Shirt',
            textColor: colorScheme.onPrimary,
          ),
        ),
      ),
      body: const CalcutShirtBody(),
      bottomNavigationBar: const CalcutShirtNavBar(),
    );
  }
}
