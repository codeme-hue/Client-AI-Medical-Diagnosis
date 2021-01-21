import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:rasa_chatbot/locale/DemoLocalization.dart';
import 'package:rasa_chatbot/pages/ChatPage.dart';


class Home extends StatefulWidget {
  final Locale locale;

  Home({@required this.locale});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xff053f5e), Color(0xff022c43)])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                  child: GestureDetector(
                    onTap: () {
                      print("getLocale" + widget.locale.languageCode);
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ChatPage(locale: widget.locale)));
                    },
                    child: ClayContainer(
                      depth: 10,
                      customBorderRadius: BorderRadius.circular(12),
                      color: Color(0xff053f5e),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          DemoLocalization.of(context).translate('Indonesian'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontFamily: 'Custom'),
                        ),
                      ),
                    ),
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        ));
  }
}
