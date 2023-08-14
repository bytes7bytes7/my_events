class Paginated<T> {
  const Paginated({
    required this.value,
    required this.offset,
    required this.count,
    required this.totalCount,
  });

  final T value;
  final int offset;
  final int count;
  final int totalCount;
}
