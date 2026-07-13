import 'dart:async';

void main() {
  final StreamController<String> notificationController = StreamController<String>();

  notificationController.stream.listen(
    (notification) {
      print("🔔 แจ้งเตือนใหม่: $notification");
    },
    onDone: () {
      print("🔒 สตรีมสิ้นสุดแล้ว (ไม่มีการแจ้งเตือนเพิ่มเติม)");
    },
  );

  notificationController.add("คุณมีข้อความใหม่จากชาติชาย");
  notificationController.add("ยอดเงินของคุณถูกหัก 125.50 บาท");
  notificationController.add("ระบบกำลังจะปิดปรับปรุงในอีก 10 นาที");

  notificationController.close();
}