import 'package:flutter/material.dart';
import 'package:red_flag/redflag_widgets/pic_container.dart';
import 'package:red_flag/redflag_widgets/rf_bottom_nav.dart';
import 'package:red_flag/redflag_widgets/rf_button.dart';
import 'package:red_flag/settings/myscreen.dart';


class OverviewPage extends StatefulWidget {
  const OverviewPage({Key? key}) : super(key: key);

  @override
  State<OverviewPage> createState() => _OverviewPageState();
}

class _OverviewPageState extends State<OverviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OverView'),
      ),
      body:Container(
        child: Column(
          children: [
            PictureContainer(),
            Text('OVERVIEW'),
            Container(
              child: Column(
                children: [
                  RFButton(text: const Text('My Contacts')),
                  RFButton(text: const Text('Verify New Contact')),
                  RFButton(text: const Text('Report an incident')),
                  
                ],
              ),
            )
          ],
        )
      ),
      bottomNavigationBar: RFBottomNavBar(selectedIndex: 2,),
    );
  }
}
