Stream<int> countStream(int max) async* {
  for (int i = 1; i <= max; i++) {
    await Future.delayed(const Duration(milliseconds: 500));
    yield i;
  }
}

Future<int> sumStream(Stream<int> stream) async {
  int sum = 0;
  await for (int value in stream) {
    sum += value;
  }
  return sum;
}

void main() async {
  print('hello world');
  // countStream(10).forEach((element) {
  //   print(element);
  // });
  Stream<int> stream = countStream(10);
  int sum = await sumStream(stream);
  print(sum);
}
