class SwagSize {
  // name e.g small, medium, large
  final String name;

  // abbreviation e.g. S, M, L
  final String abbreviation;

  // value e.g // medium - 270 large - 540 xlarge - 1080
  final double value;

  // tooltip
  final String tooltip;

  const SwagSize({
    required this.name,
    required this.abbreviation,
    required this.tooltip,
    required this.value,
  });
}
