import 'package:devapp/app/constants/colors.dart';
import 'package:devapp/app/constants/dimensions.dart';
import 'package:devapp/core/viewmodels/login_view_model.dart';
import 'package:devapp/meta/views/login_view/login_view_widget.dart';
import 'package:devapp/meta/widgets/app_bar.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class Loginview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<LoginViewModel>(
        builder: (context, model, child) => Scaffold(
              backgroundColor: bgColor,
              appBar: appBar(titleText: '', leadingWidget: null, actions: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      EvaIcons.close,
                      color: yellowColor,
                    ))
              ]),
              // body: ,
              body: body(model),
            ));
  }
}

Widget body(LoginViewModel loginViewModel) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.end,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(
        "Welcome To Dev Communtiy",
        style: TextStyle(
          color: whiteColor,
          fontWeight: FontWeight.bold,
          fontSize: 26.0,
        ),
      ),
      countNoOfUsers(loginViewModel.noOfUsers),
      vSizedBox3,
      authButton(
          authProvider: "Facebook",
          iconData: FontAwesomeIcons.facebook,
          color: Colors.blueAccent,
          onPressed: () {}),
      vSizedBox1,
      authButton(
          authProvider: "Github",
          iconData: FontAwesomeIcons.github,
          color: bgColorFaint,
          onPressed: () {}),
      vSizedBox1,
      authButton(
          authProvider: "Google",
          iconData: FontAwesomeIcons.google,
          color: Colors.redAccent,
          onPressed: () {}),
      vSizedBox3,
      Container(
          width: 400.0,
          height: 300.0,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage(
              'assets/images/auth.png',
            ),
            fit: BoxFit.cover,
          ))),
      Container(
        decoration: BoxDecoration(
          color:darkColor,
        ),
        width: 400.0,
        height: 70.0,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        IconButton(
          icon: Icon(
            FontAwesomeIcons.twitter,
            color: whiteColor,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(
            FontAwesomeIcons.facebookF,
            color: whiteColor,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(
            FontAwesomeIcons.instagram,
            color: whiteColor,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(
            FontAwesomeIcons.github,
            color: whiteColor,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(
            FontAwesomeIcons.twitch,
            color: whiteColor,
          ),
          onPressed: () {},
        ),
      ]))
    ],
  );
}
