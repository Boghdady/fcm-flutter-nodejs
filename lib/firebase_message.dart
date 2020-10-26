import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class FirebaseMessage extends StatefulWidget {
  FirebaseMessage({Key key}) : super(key: key);

  @override
  _FirebaseMessageState createState() => _FirebaseMessageState();
}

class _FirebaseMessageState extends State<FirebaseMessage> {
  final FirebaseMessaging _fcm = FirebaseMessaging();

  @override
  void initState() {
    super.initState();
    _fcm.getToken().then((value) => print("Token is : $value"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notification"),
      ),
    );
  }
}
