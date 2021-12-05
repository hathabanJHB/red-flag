import 'package:flutter/material.dart';
import 'package:red_flag/redflag_widgets/rf_pure_button.dart';
import 'package:red_flag/settings/myscreen.dart';
import 'package:flutter/material.dart';
import 'package:red_flag/redflag_widgets/pic_container.dart';
import 'package:red_flag/redflag_widgets/rf_bottom_nav.dart';
import 'package:red_flag/redflag_widgets/rf_button.dart';
import 'package:red_flag/settings/myscreen.dart';

class ReportIncidentPage extends StatefulWidget {
  const ReportIncidentPage({Key? key}) : super(key: key);

  @override
  State<ReportIncidentPage> createState() => _ReportIncidentPageState();
}

class _ReportIncidentPageState extends State<ReportIncidentPage> {
  bool chkValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('REPORT INCEDENT'),
      ),
      body: Container(
          child: Column(
        children: [
          PictureContainer(),
          Text('Details Of Incedent'),
          Container(
            child: Column(
              children: [
                RFPureButton(
                    child: const Text(
                  'Location Of Incedent',
                  style: TextStyle(color: Colors.deepPurple),
                )),
                RFPureButton(
                    child: const Text(
                  'Date and Time Of Incedent',
                  style: TextStyle(color: Colors.deepPurple),
                )),
                RFPureButton(
                    child: const Text(
                  'Description Of Incedent',
                  style: TextStyle(color: Colors.deepPurple),
                )),
                RFPureButton(
                    child: const Text(
                  'Attach Images',
                  style: TextStyle(color: Colors.deepPurple),
                )),
                RFPureButton(
                    child: const Text(
                  'Witness Contact Details',
                  style: TextStyle(color: Colors.deepPurple),
                )),
                Row(
                  children: [
                    RFPureButton(
                        child: const Text(
                      'Contact The Police On My Behalf',
                      style: TextStyle(color: Colors.deepPurple),
                    )),
                    Checkbox(
                      value: chkValue,
                      onChanged: (bool) {
                        setState(() {
                          this.chkValue = true;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      )),
      bottomNavigationBar: RFBottomNavBar(
        // selectedIndex: 2,
      ),
    );
  }
}
