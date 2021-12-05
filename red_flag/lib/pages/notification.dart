import 'package:flutter/material.dart';
import 'package:red_flag/redflag_widgets/rf_sized_box.dart';
import 'package:red_flag/settings/myscreen.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RFSizedBox(),
    );
  }
}
