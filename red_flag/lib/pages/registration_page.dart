import 'package:flutter/material.dart';
import 'package:red_flag/settings/myscreen.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: const Text('Red-Flag'),
        // ),
        body: ListView(children: <Widget>[
          
          const SizedBox(
            height: 10,
          ),
          _title(),
          const SizedBox(
            height: 50,
          ),

          //const SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(top: 25.0, left: 100, right: 100),
            child: _nameField(),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25.0, left: 100, right: 100),
            child: _lastnameField(),
          ),
          _space(),

          Padding(
            padding: const EdgeInsets.only(top: 25.0, left: 100, right: 100),
            child: _passwordField(),
          ),

          _space(),

          Padding(
            padding: const EdgeInsets.only(top: 25.0, left: 100, right: 100),
            child: _phoneField(),
          ),
          _space(),

          Padding(
            padding: const EdgeInsets.only(top: 25.0, left: 100, right: 100),
            child: _emergencyContactField(),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25.0, left: 100, right: 100),
            child: _verificationButton(context),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25.0, left: 100, right: 100),
            child: _submitCancelButtons(context),
          ),
        ]),
      ),
    );
  }
}

_nameField() {
  return TextFormField(
    decoration: const InputDecoration(
      border: UnderlineInputBorder(),
      labelText: 'Name',
    ),
  );
}

_lastnameField() {
  return TextFormField(
    decoration: const InputDecoration(
      border: UnderlineInputBorder(),
      labelText: 'Lastname',
    ),
  );
}

_passwordField() {
  return TextFormField(
    decoration: const InputDecoration(
      border: UnderlineInputBorder(),
      labelText: 'Password',
    ),
  );
}

_phoneField() {
  return TextFormField(
    decoration: const InputDecoration(
      border: UnderlineInputBorder(),
      labelText: 'Phone',
    ),
  );
}

_emergencyContactField() {
  return TextFormField(
    decoration: const InputDecoration(
      border: UnderlineInputBorder(),
      labelText: 'Emergency contact',
    ),
  );

}

_verificationButton(context) {
  return ElevatedButton(
    //padding: EdgeInsets.only(left: 20,right: 20),
    style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
        shadowColor: MaterialStateProperty.all(Colors.grey),
        elevation: MaterialStateProperty.all(15),
        minimumSize: MaterialStateProperty.all(const Size(200, 60)),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ))),
    onPressed: () {
      Navigator.of(context).pushNamed("overViewPage");
    },
    child: const Text(
      "Verification Process",
      style: TextStyle(color: Colors.deepPurple, fontSize: 20),
    ),
  );
}

// _submitButton(context) {
//   return ElevatedButton(
//     //padding: EdgeInsets.only(left: 20,right: 20),
//     style: ButtonStyle(
//         backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
//         shadowColor: MaterialStateProperty.all(Colors.grey),
//         elevation: MaterialStateProperty.all(15),
//         minimumSize: MaterialStateProperty.all(const Size(200, 60)),
//         shape: MaterialStateProperty.all(RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(30),
//         ))),
//     onPressed: () {
//       Navigator.of(context).pushNamed("overViewPage");
//     },
//     child: const Text(
//       "Login",
//       style: TextStyle(color: Colors.deepPurple, fontSize: 20),
//     ),
//   );
// }

// _cancelButton(context) {
//   return ElevatedButton(
//     //padding: EdgeInsets.only(left: 20,right: 20),
//     style: ButtonStyle(
//         backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
//         shadowColor: MaterialStateProperty.all(Colors.grey),
//         elevation: MaterialStateProperty.all(15),
//         minimumSize: MaterialStateProperty.all(const Size(200, 60)),
//         shape: MaterialStateProperty.all(RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(30),
//         ))),
//     onPressed: () {
//       Navigator.of(context).pushNamed("loginPage");
//     },
//     child: const Text(
//       "Login",
//       style: TextStyle(color: Colors.deepPurple, fontSize: 20),
//     ),
//   );
// }
_submitCancelButtons(context) {
     final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

  return Center(
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ElevatedButton(
          style: style,
          child: const Text('Submit'),
          onPressed: () {
            
          },
          
        ),
        _space(),
        const SizedBox(height: 30),
        ElevatedButton(
          
          style: style,
          
          child: const Text('Cancel'),
          onPressed: () {
            Navigator.of(context).pushNamed('loginPage');
          },
        ),
      ],
    ),
  );
}

_title() {
  return const Text("Register",
      style: TextStyle(
        fontFamily: "Font2",
        fontSize: 30,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center);
}

_space() {
  return SizedBox(
    height: MyScreen.setHeght(2),
    width: MyScreen.setWidth(15),
  );
}
