import 'package:flutter/material.dart';
import 'package:red_flag/redflag_widgets/pic_container.dart';

class RFSizedBox extends StatelessWidget {
  const RFSizedBox({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
              height: 200,
              width: 250,
              child: Container(
                decoration: BoxDecoration(
                  // image: const DecorationImage(
                  //   image: AssetImage('assets/images/red-flag.jpg'),
                  //   scale: 3.0,
                  // ), //DecprationImage
                  border: Border.all(
                      color: Colors.transparent,
                      width: 4.0,
                      style: BorderStyle.solid), //Border.all
  
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0),
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0),
                  ),
                  //BorderRadius.only
                  /************************************/
                  /* The BoxShadow widget  is here */
                  /************************************/
                  boxShadow: [
                    BoxShadow(
                      
                      // color: Colors.,
                      offset: const Offset(
                        5.0,
                        5.0,
                      ),
                      blurRadius: 10.0,
                      spreadRadius: 2.0,
                    ), 
                    BoxShadow(
                      color: Colors.white,
                      offset: const Offset(0.0, 0.0),
                      blurRadius: 0.0,
                      spreadRadius: 0.0,
                    ),
                  ],
                ), 
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      PictureContainer(),
                      Text('dunny test')
                    ],
                  ),
                ),
              ), 
            );
      
    
  }
}