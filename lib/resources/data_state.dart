abstract class DataState<T> {
  final T? data;
  final String? error;
  const DataState(this.data, this.error);
}

class DataSuccess<T> extends DataState<T> {
  const DataSuccess(T? data) : super(data, null);
}

class DataFaild<T> extends DataState<T> {
  const DataFaild(String? error) : super(null, error);
}
