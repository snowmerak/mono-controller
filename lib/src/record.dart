abstract class Record {
  T get<T>(String field);
  void set<T>(String field, T value);
}
