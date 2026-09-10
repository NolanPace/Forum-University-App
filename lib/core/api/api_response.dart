// FILE: lib/core/api/api_response.dart

class ApiResponse<T> {
  final T data;
  final int statusCode;

  const ApiResponse(
    this.data,
    this.statusCode,
  );
}