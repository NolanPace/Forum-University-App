// FILE: lib/shared/models/pagination.dart

class Pagination {
  final int page;
  final int pageSize;
  final int total;

  const Pagination({
    this.page = 1,
    this.pageSize = 25,
    this.total = 0,
  });
}