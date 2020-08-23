import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {

  String desc ="Upcoming Flutter and Android developer.";

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration:
      BoxDecoration(
          gradient: LinearGradient(
              colors: [const Color(0xff213A50),
                const Color(0xff071930)]
          )
      ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
                borderRadius:BorderRadius.all(Radius.circular(150)),
                child: Image.asset("assets/profilepic.jpg",width: 150,height: 150,)),
            SizedBox(height: 12,),
            Text("YogeshJaisankar",style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 25
            ),),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.symmetric(horizontal:
              80),
              child: Text(desc,
                textAlign:TextAlign.center,style: TextStyle(
                fontSize: 20,color: Colors.black,fontWeight: FontWeight.w500
              ),),
            ),
            SizedBox(height: 12,),
            Text("Connect with me",style: TextStyle(
              color: Colors.white,
              fontSize: 16
            ),),
            SizedBox(height: 16,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    _launchURL("https://www.facebook.com/yogesh.jaisankar.9");
                  },
                    child: Image.asset("assets/facebook.png",width: 60,height: 60,)),
                SizedBox(width: 16,),
                GestureDetector(
                    onTap: (){
                      _launchURL("https://www.instagram.com/__y_o_g_e_s_h__16/");
                    },
                    child: Image.asset("assets/instagram.png",width: 60,height: 60,)),
                SizedBox(width: 16,),
                GestureDetector(
                  onTap: (){
                    _launchURL("https://github.com/yugee456");
                  },
                    child: Image.asset("assets/github.png",width: 60,height: 60,)),
              ],
            ),
            SizedBox(height: 20,),
            GestureDetector(
              onTap: (){
                _launchURL("https://wa.me/916369686307");
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 24,vertical: 12),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      const Color(0xffA2834D),
                      const Color(0xffbc9a5f)
                    ]
                  ),
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Text("Click To Chat"),
              ),
            ),
            SizedBox(height: 20,),
            Text("“You might not think that programmers are artists, but programming is an extremely creative profession. It's logic-based creativity.”",textAlign:TextAlign.center,style: TextStyle(
              fontSize: 20,fontWeight: FontWeight.w400,color: Colors.white70
            ),),
          ],
        ),
      ),
    );
  }
}
