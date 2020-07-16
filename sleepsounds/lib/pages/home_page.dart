import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_admob/firebase_admob.dart';

import 'CustomizePage.dart';
import 'Settings_page.dart';

const String testDevice = 'Mobile_id';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

int _selectedIndex;

class _HomePageState extends State<HomePage> {
  //ad portion starts here
  static const MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    testDevices: testDevice != null ? <String>[testDevice] : null,
    nonPersonalizedAds: true,
    keywords: <String>['Games', 'Mario'],
  );

  BannerAd _bannerAd;

  BannerAd createBannerAd() {
    return BannerAd(
      adUnitId: BannerAd.testAdUnitId,
      size: AdSize.banner,
      targetingInfo: targetingInfo,
      listener: (MobileAdEvent event) {
        print("BannerAd $event");
      },
    );
  }

  @override
  void initState() {
    FirebaseAdMob.instance.initialize(appId: BannerAd.testAdUnitId);
    _bannerAd = createBannerAd()
      ..load()
      ..show();
    super.initState();
  }

  @override
  void dispose() {
    _bannerAd.dispose();
    super.dispose();
  }
//ad portion ends here

  //navigation bar starts here

  //these following lines are for the navigation bar
  PageController _pageController = PageController();
  List<Widget> _screens = [CustomizePage(), SettingsPage()];

  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItemTapped(int selectedIndex) {
    //print(selectedIndex);
    _pageController.jumpToPage(selectedIndex);
  }

  //navigation bar ends here

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          //body start
          body: PageView(
            controller: _pageController,
            children: _screens,
            onPageChanged: _onPageChanged,
            physics: NeverScrollableScrollPhysics(),
          ),
          //body end

          bottomNavigationBar: Padding(
            padding: const EdgeInsets.only(bottom: 50.0),
            child: BottomNavigationBar(
              onTap: _onItemTapped,
              backgroundColor: Colors.black,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.settings_input_composite,
                    color: _selectedIndex == 0 ? Colors.white : Colors.grey,
                  ),
                  title: Text(
                    'CUSTOMIZE',
                    style: TextStyle(
                        color:
                            _selectedIndex == 0 ? Colors.white : Colors.grey),
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.settings,
                    color: _selectedIndex == 1 ? Colors.white : Colors.grey,
                  ),
                  title: Text(
                    'SETTINGS',
                    style: TextStyle(
                        color:
                            _selectedIndex == 1 ? Colors.white : Colors.grey),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
