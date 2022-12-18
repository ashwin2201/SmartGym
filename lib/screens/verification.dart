
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class VerifyEmail extends StatelessWidget {
  bool verified;

  VerifyEmail({required this.verified});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbardefault, // need to add our own default app bar
        body: Column(
          children: [
            SizedBox(height: 200,),
            const Align(alignment: Alignment.center, child: Text('Hello, we have sent you an email containing a verified Google link. \n\nPlease check your mail and follow that link to verify your email address to begin using our app. \n\nPlease check your junk/spam folder too! \n\nIf you have already verified, try logging in again', textAlign:TextAlign.center,style: TextStyle(
              fontWeight: FontWeight.normal,
              fontFamily: 'Inter',
              fontSize: 20,
              color: Colors.black,))),
            Container(),
          ],
        )
    );
  }