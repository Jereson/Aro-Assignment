import 'package:flutter/widgets.dart';

class ModelData {
  final String name;
  final String image;
  final String sendIcon;
  final String receiveIcon;

  ModelData({this.name, this.image, this.sendIcon, this.receiveIcon});
}

class DummyData with ChangeNotifier {
  List<ModelData> dummyData = [
    ModelData(
        name: 'JOE DAN',
        image: '',
        sendIcon: 'assets/images/send.png',
        receiveIcon: 'assets/images/receive.png'),
    ModelData(
        name: 'JOE DAN',
        image: '',
        sendIcon: 'assets/images/send.png',
        receiveIcon: 'assets/images/receive.png'),
    ModelData(
        name: 'JOE DAN',
        image: '',
        sendIcon: 'assets/images/send.png',
        receiveIcon: 'assets/images/receive.png'),
    ModelData(
        name: 'JOE DAN',
        image: '',
        sendIcon: 'assets/images/send.png',
        receiveIcon: 'assets/images/receive.png'),
    ModelData(
        name: 'JOE DAN',
        image: '',
        sendIcon: 'assets/images/send.png',
        receiveIcon: 'assets/images/receive.png'),
    ModelData(
        name: 'JOE DAN',
        image: '',
        sendIcon: 'assets/images/send.png',
        receiveIcon: 'assets/images/receive.png'),
    ModelData(
        name: 'JOE DAN',
        image: '',
        sendIcon: 'assets/images/send.png',
        receiveIcon: 'assets/images/receive.png'),
  ];
}
