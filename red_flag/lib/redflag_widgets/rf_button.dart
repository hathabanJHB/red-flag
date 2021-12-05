import 'package:flutter/material.dart';
import 'package:red_flag/pages/report_incident_report.dart';

class RFButton extends StatelessWidget {
  final text;
  final fuction;
  final icon;
  RFButton({this.text, this.fuction, this.icon});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
    //padding: EdgeInsets.only(left: 20,right: 20),
    style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
        shadowColor: MaterialStateProperty.all(Colors.grey),
        elevation: MaterialStateProperty.all(15),
        minimumSize: MaterialStateProperty.all(const Size(200, 60)),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ))),
    onPressed: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (_) => const  ReportIncidentPage()));
      // Navigator.of(context).pushNamed("forgotPasswordPage");
    },
    child: text,
  );
  }
}
