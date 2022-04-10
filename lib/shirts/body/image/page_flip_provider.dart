import '../../../swag_exporter.dart';

final pageFlipKeyProvider = Provider<GlobalKey<PageFlipBuilderState>>((ref) {
  // used to flip the page programmatically
  final pageFlipKey = GlobalKey<PageFlipBuilderState>();
  return pageFlipKey;
});
