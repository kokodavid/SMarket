import 'package:flutter/material.dart';
import 'package:smarket/tools/app_tools.dart';

class SmLoginLogout extends StatefulWidget {
  @override
  _SmLoginLogoutState createState() => _SmLoginLogoutState();
}


class _SmLoginLogoutState extends State<SmLoginLogout> {

  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  final scaffoldKey = new GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme
          .of(context)
          .primaryColor,
      appBar: new AppBar(
        title: new Text("Login/Logout"),
        elevation: 0.0,
      ),
      body: new SingleChildScrollView(
        child: new Column(
          children: <Widget>[

            new SizedBox(
              height: 30.0,
            ),
            appTextField(
                isPassword: false,
                sidePadding: 18.0,
                textHint: "Email Address",
                textIcon: new Icon(Icons.email,)
            ),
            new SizedBox(
              height: 30.0,
            ),

            appTextField(
              isPassword: true,
              sidePadding: 18.0,
              textHint: "Password",
              textIcon: new Icon(Icons.lock),


            ),
            appButton(
                btnTxt: "Login", onBtnClicked: verifyLogin,
                btnPadding: 20.0,
                btnColor: Theme
                    .of(context)
                    .primaryColor
            ),
            new GestureDetector(
              onTap: () {

              },
              child: new Text(
                "Not Registered ? Sign Up Here", style: new TextStyle(
                  color: Colors.white
              ),),
            ),


          ],

        ),
      ),
    );
  }

  verifyLogin(){

    if(email.text == ""){
      showSnackbar("Email cannot be empty", scaffoldKey);
    }
  }
  }


