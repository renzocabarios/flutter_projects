abstract class DataState<T extends Object> {
  final Object? error;
  final String? message;
  final String? status;
  final T? data;

  const DataState({
    this.error,
    this.message,
    this.status,
    this.data,
  });
}

class DataSuccess<T extends Object> extends DataState<T> {
  const DataSuccess(T data, String message, String status)
      : super(
          data: data,
          message: message,
          status: status,
        );
}

class DataError<T extends Object> extends DataState<T> {
  const DataError(Object error, String message, String status)
      : super(
          error: error,
          message: message,
          status: status,
        );
}
