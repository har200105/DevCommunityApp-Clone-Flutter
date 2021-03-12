import 'package:devapp/app/constants/colors.dart';
import 'package:devapp/app/constants/dimensions.dart';
import 'package:flutter/material.dart';

Widget authButton(
    {@required String authProvider,
    @required IconData iconData,
    @required Color color,
    @required Function onPressed}) {
      return GestureDetector(
        onTap: () => onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 65.0),
          child: Container(
            decoration:BoxDecoration(
              borderRadius:BorderRadius.circular(4.0),
              color:color,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(iconData,color:whiteColor),
                  hSizedBox1,
                  Text("Sign up with $authProvider",
                  style: TextStyle(
                    fontSize:17.0,
                    color:whiteColor,
                    fontWeight:FontWeight.bold,
                  ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
    }

Widget countNoOfUsers(int users) {
  return RichText(
      text: TextSpan(
          text: "DEV COMMUNITY",
          style: TextStyle(
            color: yellowColor,
            fontWeight: FontWeight.bold,
          ),
          children: <TextSpan>[
        TextSpan(
          text: "Is a Community of $users Devs",
          style: TextStyle(
            color: Colors.grey.shade500,
            fontWeight: FontWeight.bold,
          ),
        ),
      ]));
}
