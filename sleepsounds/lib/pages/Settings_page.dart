import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/night.jpeg'), fit: BoxFit.fill),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.only(top: 160.0, left: 15.0, bottom: 30),
                child: Text(
                  'Please support us',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 16.0),
                ),
              ),
              FlatButton(
                color: Colors.white12,
                highlightColor: Colors.black12,
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Upgrade',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              FlatButton(
                color: Colors.white12,
                highlightColor: Colors.black12,
                onPressed: () {
                  //this link is for rating us
                  //if you want to un comment this link then first go the this
                  // function and upgrade the link there then un comment it
                  //_launchURLRateOurApp();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Rate us',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
//            padding: const EdgeInsets.all(8.0),
                padding: const EdgeInsets.only(top: 30.0, left: 16.0),
                child: Text(
                  'Language',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 16.0),
                ),
              ),
              FlatButton(
                color: Colors.white12,
                highlightColor: Colors.black12,
                onPressed: () {
                  print('english clicked ');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'English',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
//            padding: const EdgeInsets.all(8.0),
                padding: const EdgeInsets.only(top: 30.0, left: 16.0),
                child: Text(
                  'More sounds?',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 16.0),
                ),
              ),
              FlatButton(
                color: Colors.white12,
                highlightColor: Colors.black12,
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'More free apps',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              FlatButton(
                color: Colors.white12,
                highlightColor: Colors.black12,
                onPressed: () {
                  launch(_emailLaunchUri.toString());
                  // _emailLaunchUri();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Contact us',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              FlatButton(
                highlightColor: Colors.black,
                onPressed: () {
                  print('Terms of Service button is pressed');
                  _launchURLTermsOfService();
                },
                child: Text(
                  'Terms of Service',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 16.0),
                ),
              ),
              FlatButton(
                highlightColor: Colors.black,
                onPressed: () {
                  print('privacy policy button is pressed');
                  _launchURLPrivacyPolicy();
                },
                child: Text(
                  'Privacy Policy',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 16.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: FlatButton(
                  onPressed: () {
                    print('acknowledged button is pressed ');
                    _launchURLAcknowledge();
                  },
                  child: Text(
                    'Acknowledgements',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 16.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}

//for acknowledgement
_launchURLAcknowledge() async {
  const url = 'https://maplemedia.io/soundsleep/acknowledgement.html';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

//in order to rate the app

//_launchURLRateOurApp() async {
//  const url = 'https://maplemedia.io/soundsleep/acknowledgement.html';
//  if (await canLaunch(url)) {
//    await launch(url);
//  } else {
//    throw 'Could not launch $url';
//  }
//}

//for privacy policy
_launchURLPrivacyPolicy() async {
  const url = 'https://maplemedia.io/privacy/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

//for Terms of Service
_launchURLTermsOfService() async {
  const url = 'https://maplemedia.io/terms-of-service/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

//for sending mail to the us(the stake holders)
final Uri _emailLaunchUri = Uri(
    scheme: 'mailto',
    path: 'haidarbhatti.hb85@gmail.com',
    queryParameters: {'subject': 'thank you for joining us'});
