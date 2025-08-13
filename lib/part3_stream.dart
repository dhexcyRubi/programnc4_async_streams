// File: part3_stream_numbers.dart

Stream<int> numberStream() async* {
  for (var i = 1; i <= 5; i++) {
    yield i;
    await Future.delayed(Duration(seconds: 1));
  }
}

void main() {
  numberStream().listen((num) {
    print('New: $num');
  });
  print('List of numbers...');
}
