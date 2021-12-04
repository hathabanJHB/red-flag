import 'package:flutter/material.dart';
import 'package:red_flag/pages/overview_page.dart';
import 'package:red_flag/routing.dart';
import 'package:red_flag/settings/myscreen.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
        // appBar: AppBar(
        //   title: const Text('Red-Flag'),
        // ),
        body: ListView(children: <Widget>[
          const SizedBox(height: 10,),
          Image.asset('assets/images/red-flag.jpg', height: 60,),
           const SizedBox(height: 10,),
          _title(),
          const SizedBox(height: 50,),
          
          //const SizedBox(height: 5,),
          Padding(
                padding: const EdgeInsets.only(top: 25.0,left: 100,right: 100),
                child: _usernameField(),
          ),
          Padding(
                padding: const EdgeInsets.only(top: 25.0,left: 100,right: 100),
                child: _passwordField(),
          ),
          _space(),

          Padding(
                padding: const EdgeInsets.only(top: 25.0,left: 100,right: 100),
                child: _loginButton(),
          ),
          
        ]),
      ),
    );
  }

  _space() {
    return SizedBox(
      height: MyScreen.setHeght(2),
    );
  }

  _usernameField() {
    return TextField(
      textAlign: TextAlign.left,
      scrollPadding: const EdgeInsets.only(left: 30,right: 30),
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: 'Username',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            width: 100,
            style: BorderStyle.solid,
          ),
        ),
        filled: true,
        contentPadding: const EdgeInsets.all(4),
        fillColor: Colors.white,
      ),
    );
  }

  _passwordField() {
    return TextField(
      textAlign: TextAlign.left,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: 'Password',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            width: 100,
            style: BorderStyle.solid,
          ),
        ),
        filled: true,
        contentPadding: const EdgeInsets.all(4),
        fillColor: Colors.white,
      ),
    );
  }

  _loginButton() {
    return RaisedButton(
      padding: EdgeInsets.only(left: 20,right: 20),
      onPressed: () {
        Navigator.of(context).pushNamed("overViewPage");
      },
      child: const Text(
        "Login",
        style: TextStyle(color: Colors.deepPurple, fontSize: 20),
      ),
    );
  }
}

_title() {
  return const Text("Red Flag", style: TextStyle(fontFamily: "Font2",
                  fontSize: 40,
                  color: Colors.redAccent,
                  fontWeight: FontWeight.bold,
                  ),textAlign: TextAlign.center);
}
