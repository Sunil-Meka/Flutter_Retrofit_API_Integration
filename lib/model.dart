import 'dart:convert';
List<Devices> DevicesFromJson(String str) => List<Devices>.from(json.decode(str).map((x) => Devices.fromJson(x)));
String DevicesToJson(List<Devices> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
class Devices {
  Devices({
    required this.device_id,
    required this.e1,
    required this.e2,
    required this.e3,
  });
  int device_id;
  int e1;
  String e2;
  bool e3;
  factory Devices.fromJson(Map<String, dynamic> json) => Devices(
    device_id: json["device_id"],
    e1: json["e1"],
    e2: json["e2"],
    e3: json["e3"],
  );
  Map<String, dynamic> toJson() => {
    "device_id": device_id,
    "e1": e1,
    "e2": e2,
    "e3": e3,
  };
}