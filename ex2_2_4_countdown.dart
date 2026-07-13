import 'dart:async';

Stream<dynamic> countdown(int from) async* {
  for (int i = from; i >= 0; i--) {
    await Future.delayed(Duration(seconds: 1));

    if (i == 0) {
      yield "หมดเวลา!"; 
    } else {
      yield i; 
    }
  }
}

void main() async {
  print("--- เริ่มต้นระบบนับถอยหลัง ---");

  await for (var value in countdown(5)) {
    print(value);
  }

  print("--- จบการทำงาน ---");
}