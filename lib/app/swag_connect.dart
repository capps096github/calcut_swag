import '../swag_exporter.dart';
import 'calcut_splash.dart';

///This widget is responsible for connecting the app
/// It checks if we are on the web, then it shows [CalcutSwagHome]
class CalcutSwagConnect extends StatelessWidget {
  const CalcutSwagConnect({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final appSplash = ref.watch(appSplashProvider);

        return AnimatedSwitcher(
          duration: halfSeconds,
          child: appSplash.when(
              data: (_) {
                return const CalcutSwagHome();
              },
              loading: () => const CalcutSplash(),
              error: (error, stackTrace) => ErrorWidget(error)),
        );
      },
    );
  }
}

final appSplashProvider = FutureProvider<dynamic>((ref) async {
  // Wait for two seconds
  return Future.delayed(twoSeconds, () {
    return true;
  });
});
