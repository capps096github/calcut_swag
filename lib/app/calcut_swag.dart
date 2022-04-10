import '../swag_exporter.dart';


class CalcutSwag extends StatelessWidget {
  const CalcutSwag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: calcutRouterProvider.routeInformationParser,
      routerDelegate: calcutRouterProvider.routerDelegate,
      theme: calcutTheme,
      color: calcutColor,
      title: "The Calcut Swag",
      debugShowCheckedModeBanner: false,
      restorationScopeId: "calcut_swag",
      // -- Scroll Behavior --
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        physics: const BouncingScrollPhysics(),
        scrollbars: false,
      ),
    );
  }
}
