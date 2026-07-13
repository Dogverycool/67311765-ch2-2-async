void main() {
  print("1. เริ่ม");

  Future.delayed(Duration(seconds: 3), () {
    return "2. โหลดเสร็จ";
  }).then((value) {
    print(value);
  });

  print("3. จบ");
  
}