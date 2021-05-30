void main() {
  int addFive({int? numbers}){
    return 5+ numbers!;
  }
  print('5+5 is ${addFive(numbers: 10)}');
}

// dart run scratch.dart