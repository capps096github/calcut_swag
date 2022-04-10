import 'swag_exporter.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    const ProviderScope(
      child: RootRestorationScope(
        restorationId: "calcut_swag",
        child: CalcutSwag(),
      ),
    ),
  );
}
