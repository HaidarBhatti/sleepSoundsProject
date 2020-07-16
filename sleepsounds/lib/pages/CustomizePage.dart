//import 'package:assets_audio_player/assets_audio_player.dart';

import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:just_audio/just_audio.dart';
import 'package:audioplayers/audioplayers.dart';

class CustomizePage extends StatefulWidget {
  @override
  _CustomizePageState createState() => _CustomizePageState();
}

class _CustomizePageState extends State<CustomizePage>
    with AutomaticKeepAliveClientMixin {
//  here is the code for the slider (volume up and down)
//code starts from here
  double sliderValue = 0.0,
      sliderValueForest = 0.0,
      sliderValueLeaf = 0.0,
      sliderValueRain = 0.0;
  int maxVol, currentVol;

//  var volumeForest = Volume();

  @override
  void initState() {
    super.initState();
    //this is for audio player so dont remove it
    initPlayer();
  }
//
//
//  bool forestColor = false;
//  double forestVolume = 0.0;
//  forestChangeColor() {
//    if (forestColor == false) {
//      forestColor = true;
//    } else {
//      forestColor = false;
//    }
//  }
//
//  final forestAssetsAudioPlayer = AssetsAudioPlayer();
//  forestPlay() {
//    if (forestColor == true) {
//      forestAssetsAudioPlayer.open(
//        Audio("assets/forest.mp3"),
//      );
//      forestAssetsAudioPlayer.play();
//    } else {
//      forestAssetsAudioPlayer.pause();
//    }
//  }

////  following is the code for Rain, every thing about Rain
//
//  bool Color = false;
//  double windowVolume = 0.0;
//  windowChangeColor() {
//    if (windowColor == false) {
//      windowColor = true;
//    } else {
//      windowColor = false;
//    }
//  }
//
//  final windowAssetsAudioPlayer = AssetsAudioPlayer();
//  windowPlay() {
//    if (windowColor == true) {
//      windowAssetsAudioPlayer.open(
//        Audio("assets/window.mp3"),
//      );
//      windowAssetsAudioPlayer.play();
//    } else {
//      windowAssetsAudioPlayer.pause();
//    }
//  }
//
////  following is the code for roof, every thing about roof
//  bool roofColor = false;
//  double roofVolume = 0.0;
//  roofChangeColor() {
//    if (roofColor == false) {
//      roofColor = true;
//    } else {
//      roofColor = false;
//    }
//  }
//
//  final roofAssetsAudioPlayer = AssetsAudioPlayer();
//  roofPlay() {
//    if (roofColor == true) {
//      roofAssetsAudioPlayer.open(
//        Audio("assets/pOneThreeRoof.mp3"),
//      );
//      roofAssetsAudioPlayer.play();
//    } else {
//      roofAssetsAudioPlayer.pause();
//    }
//  }

//  //  following is the code for window, every thing about window
//  bool windowColor = false;
//  double windowVolume = 0.0;
//  windowChangeColor() {
//    if (windowColor == false) {
//      windowColor = true;
//    } else {
//      windowColor = false;
//    }
//  }
//
//  final windowAssetsAudioPlayer = AssetsAudioPlayer();
//  windowPlay() {
//    if (windowColor == true) {
//      windowAssetsAudioPlayer.open(
//        Audio("assets/pOneTwoWindow.mp3"),
//      );
//      windowAssetsAudioPlayer.play();
//    } else {
//      windowAssetsAudioPlayer.pause();
//    }
//  }
//
//  //  following is the code for roof, every thing about roof
//  bool roofColor = false;
//  double roofVolume = 0.0;
//  roofChangeColor() {
//    if (roofColor == false) {
//      roofColor = true;
//    } else {
//      roofColor = false;
//    }
//  }
//
//  final roofAssetsAudioPlayer = AssetsAudioPlayer();
//  roofPlay() {
//    if (roofColor == true) {
//      roofAssetsAudioPlayer.open(
//        Audio("assets/pOneThreeRoof.mp3"),
//      );
//      roofAssetsAudioPlayer.play();
//    } else {
//      roofAssetsAudioPlayer.pause();
//    }
//  }

//code ends here

  bool colorChangeForest = false;
  bool colorChangeleaf = false;
  bool colorChangeRain = false;
  bool colorChangeRoof = false;
  bool colorChangeUmbrella = false;
  bool colorChangeWindow = false;

  void changeForest() {
    if (colorChangeForest == false) {
      setState(() {
        colorChangeForest = true;
      });
    } else {
      setState(() {
        colorChangeForest = false;
      });
    }
  }

  void changeLeaf() {
    if (colorChangeleaf == false) {
      setState(() {
        colorChangeleaf = true;
      });
    } else {
      setState(() {
        colorChangeleaf = false;
      });
    }
  }

  void changeRain() {
    if (colorChangeRain == false) {
      setState(() {
        colorChangeRain = true;
      });
    } else {
      setState(() {
        colorChangeRain = false;
      });
    }
  }

  void changeRoof() {
    if (colorChangeRoof == false) {
      setState(() {
        colorChangeRoof = true;
      });
    } else {
      setState(() {
        colorChangeRoof = false;
      });
    }
  }

  void changeUmbrella() {
    if (colorChangeUmbrella == false) {
      setState(() {
        colorChangeUmbrella = true;
      });
    } else {
      setState(() {
        colorChangeUmbrella = false;
      });
    }
  }

  void changeWindow() {
    if (colorChangeWindow == false) {
      setState(() {
        colorChangeWindow = true;
      });
    } else {
      setState(() {
        colorChangeWindow = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/night.jpeg'), fit: BoxFit.fill),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20.0, bottom: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Rain & Thunders',
                    style: TextStyle(
                      fontSize: 35.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            print('forest clicked music will play');
                            changeForest();
                            playForest();
//                            forestChangeColor();
//                            forestPlay();
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25.0),
                              topRight: Radius.circular(25.0),
                              bottomLeft: Radius.circular(25.0),
                              bottomRight: Radius.circular(25.0),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
//                                    forestColor
                                    colorChangeForest
                                        ? Colors.red[500]
                                        : Colors.red[900],
//                                    forestColor
                                    colorChangeForest
                                        ? Colors.blue[500]
                                        : Colors.blue[900],
                                  ],
                                  begin: Alignment.topRight,
                                  end: Alignment.centerLeft,
                                ),
                              ),
                              child: Container(
                                margin: EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 15),
                                //color: Color.fromARGB(255, 73, 248, 161),
                                child: Image.asset(
                                  "images/pOneOneRain.png",
                                  fit: BoxFit.cover,
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
                          child: Text(
                            'Rain',
                            style:
                                TextStyle(color: Colors.white70, fontSize: 14),
                          ),
                        ),
                        Opacity(
                          opacity: colorChangeForest ? 1.0 : 0.0,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Container(
                              color: Colors.transparent,
                              width: 120,
                              height: 5,
//                                child: Slider(
//                                    activeColor: Colors.indigoAccent,
//                                    min: 0.0,
//                                    max: 15.0,
//                                    value: forestVolume,
//                                    onChanged: (val) {
//                                      setState(() {
//                                        forestVolume = val;
//                                        forestAssetsAudioPlayer
//                                            .setVolume(forestVolume);
//                                      });
//                                    })
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
//                Column(
//                  children: <Widget>[
//                    Column(
//                      mainAxisAlignment: MainAxisAlignment.center,
//                      crossAxisAlignment: CrossAxisAlignment.center,
//                      children: <Widget>[
//                        GestureDetector(
//                          onTap: () {
//                            print('Leaf');
//                            changeLeaf();
//                            playLeaf();
//                          },
//                          child: ClipRRect(
//                            borderRadius: BorderRadius.only(
//                              topLeft: Radius.circular(25.0),
//                              topRight: Radius.circular(25.0),
//                              bottomLeft: Radius.circular(25.0),
//                              bottomRight: Radius.circular(25.0),
//                            ),
//                            child: Container(
//                              decoration: BoxDecoration(
//                                gradient: LinearGradient(
//                                  colors: [
//                                    colorChangeleaf
//                                        ? Colors.red[500]
//                                        : Colors.red[900],
//                                    colorChangeleaf
//                                        ? Colors.blue[500]
//                                        : Colors.blue[900],
//                                  ],
//                                  begin: Alignment.topRight,
//                                  end: Alignment.centerLeft,
//                                ),
//                              ),
//                              child: Container(
//                                margin: EdgeInsets.symmetric(
//                                    vertical: 15, horizontal: 15),
//                                //color: Color.fromARGB(255, 73, 248, 161),
//                                child: Image.asset(
//                                  "images/pOneTwoWindow.png",
//                                  fit: BoxFit.cover,
//                                  height: 50,
//                                  width: 50,
//                                ),
//                              ),
//                            ),
//                          ),
//                        ),
//                        Padding(
//                          padding:
//                              const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
//                          child: Text(
//                            'Window',
//                            style:
//                                TextStyle(color: Colors.white70, fontSize: 14),
//                          ),
//                        ),
//                        Opacity(
//                          opacity: colorChangeleaf ? 1.0 : 0.0,
//                          child: Padding(
//                            padding: const EdgeInsets.only(top: 10.0),
//                            child: Container(
//                                color: Colors.transparent,
//                                width: 120,
//                                height: 5,
//                                child: Slider(
//                                  activeColor: Colors.indigoAccent,
//                                  min: 0.0,
//                                  max: 15.0,
//                                  onChanged: (newRating) async {
//                                    setState(() {
//                                      sliderValue = newRating;
//                                    });
//                                    await setVol(newRating.toInt());
//                                    await updateVolumes();
//                                  },
//                                  value: sliderValue,
//                                )),
//                          ),
//                        ),
//                      ],
//                    ),
//                  ],
//                ),
//                Column(
//                  children: <Widget>[
//                    Column(
//                      mainAxisAlignment: MainAxisAlignment.center,
//                      crossAxisAlignment: CrossAxisAlignment.center,
//                      children: <Widget>[
//                        GestureDetector(
//                          onTap: () {
//                            print('Rain');
//                            changeRain();
//                            playRain();
//                          },
//                          child: ClipRRect(
//                            borderRadius: BorderRadius.only(
//                              topLeft: Radius.circular(25.0),
//                              topRight: Radius.circular(25.0),
//                              bottomLeft: Radius.circular(25.0),
//                              bottomRight: Radius.circular(25.0),
//                            ),
//                            child: Container(
//                              decoration: BoxDecoration(
//                                gradient: LinearGradient(
//                                  colors: [
//                                    colorChangeRain
//                                        ? Colors.red[500]
//                                        : Colors.red[900],
//                                    colorChangeRain
//                                        ? Colors.blue[500]
//                                        : Colors.blue[900],
//                                  ],
//                                  begin: Alignment.topRight,
//                                  end: Alignment.centerLeft,
//                                ),
//                              ),
//                              child: Container(
//                                margin: EdgeInsets.symmetric(
//                                    vertical: 15, horizontal: 15),
//                                //color: Color.fromARGB(255, 73, 248, 161),
//                                child: Image.asset(
//                                  "images/pOneThreeRoof.png",
//                                  fit: BoxFit.cover,
//                                  height: 50,
//                                  width: 50,
//                                ),
//                              ),
//                            ),
//                          ),
//                        ),
//                        Padding(
//                          padding:
//                              const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
//                          child: Text(
//                            'Roof',
//                            style:
//                                TextStyle(color: Colors.white70, fontSize: 14),
//                          ),
//                        ),
//                        Opacity(
//                          opacity: colorChangeRain ? 1.0 : 0.0,
//                          child: Padding(
//                            padding: const EdgeInsets.only(top: 10.0),
//                            child: Container(
//                                color: Colors.transparent,
//                                width: 120,
//                                height: 5,
//                                child: Slider(
//                                  activeColor: Colors.indigoAccent,
//                                  min: 0.0,
//                                  max: 15.0,
//                                  onChanged: (newRating) async {
//                                    setState(() {
//                                      sliderValue = newRating;
//                                    });
//                                    await setVol(newRating.toInt());
//                                    await updateVolumes();
//                                  },
//                                  value: sliderValue,
//                                )),
//                          ),
//                        ),
//                      ],
//                    ),
//                  ],
//                )
              ],
            ),
            SizedBox(height: 30.0),
//            Row(
//              crossAxisAlignment: CrossAxisAlignment.end,
//              mainAxisAlignment: MainAxisAlignment.spaceBetween,
//              children: <Widget>[
//                Column(
//                  children: <Widget>[
//                    Column(
//                      mainAxisAlignment: MainAxisAlignment.center,
//                      crossAxisAlignment: CrossAxisAlignment.center,
//                      children: <Widget>[
//                        GestureDetector(
//                          onTap: () {
//                            print('Roof');
//                            changeRoof();
//                            playRoof();
//                          },
//                          child: ClipRRect(
//                            borderRadius: BorderRadius.only(
//                              topLeft: Radius.circular(25.0),
//                              topRight: Radius.circular(25.0),
//                              bottomLeft: Radius.circular(25.0),
//                              bottomRight: Radius.circular(25.0),
//                            ),
//                            child: Container(
//                              decoration: BoxDecoration(
//                                gradient: LinearGradient(
//                                  colors: [
//                                    colorChangeRoof
//                                        ? Colors.red[500]
//                                        : Colors.red[900],
//                                    colorChangeRoof
//                                        ? Colors.blue[500]
//                                        : Colors.blue[900],
//                                  ],
//                                  begin: Alignment.topRight,
//                                  end: Alignment.centerLeft,
//                                ),
//                              ),
//                              child: Container(
//                                margin: EdgeInsets.symmetric(
//                                    vertical: 15, horizontal: 15),
//                                //color: Color.fromARGB(255, 73, 248, 161),
//                                child: Image.asset(
//                                  "images/roof.png",
//                                  fit: BoxFit.cover,
//                                  height: 50,
//                                  width: 50,
//                                ),
//                              ),
//                            ),
//                          ),
//                        ),
//                        Padding(
//                          padding:
//                              const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
//                          child: Text(
//                            'Roof',
//                            style:
//                                TextStyle(color: Colors.white70, fontSize: 14),
//                          ),
//                        ),
//                        Opacity(
//                          opacity: colorChangeRoof ? 1.0 : 0.0,
//                          child: Padding(
//                            padding: const EdgeInsets.only(top: 10.0),
//                            child: Container(
//                                color: Colors.transparent,
//                                width: 120,
//                                height: 5,
//                                child: Slider(
//                                  activeColor: Colors.indigoAccent,
//                                  min: 0.0,
//                                  max: 15.0,
//                                  onChanged: (newRating) async {
//                                    setState(() {
//                                      sliderValue = newRating;
//                                    });
//                                    await setVol(newRating.toInt());
//                                    await updateVolumes();
//                                  },
//                                  value: sliderValue,
//                                )),
//                          ),
//                        ),
//                      ],
//                    ),
//                  ],
//                ),
//                Column(
//                  children: <Widget>[
//                    Column(
//                      mainAxisAlignment: MainAxisAlignment.center,
//                      crossAxisAlignment: CrossAxisAlignment.center,
//                      children: <Widget>[
//                        GestureDetector(
//                          onTap: () {
//                            print('Umrella');
//                            changeUmbrella();
//                            playUmbrella();
//                          },
//                          child: ClipRRect(
//                            borderRadius: BorderRadius.only(
//                              topLeft: Radius.circular(25.0),
//                              topRight: Radius.circular(25.0),
//                              bottomLeft: Radius.circular(25.0),
//                              bottomRight: Radius.circular(25.0),
//                            ),
//                            child: Container(
//                              decoration: BoxDecoration(
//                                gradient: LinearGradient(
//                                  colors: [
//                                    colorChangeUmbrella
//                                        ? Colors.red[500]
//                                        : Colors.red[900],
//                                    colorChangeUmbrella
//                                        ? Colors.blue[500]
//                                        : Colors.blue[900],
//                                  ],
//                                  begin: Alignment.topRight,
//                                  end: Alignment.centerLeft,
//                                ),
//                              ),
//                              child: Container(
//                                margin: EdgeInsets.symmetric(
//                                    vertical: 15, horizontal: 15),
//                                //color: Color.fromARGB(255, 73, 248, 161),
//                                child: Image.asset(
//                                  "images/umbrella.png",
//                                  fit: BoxFit.cover,
//                                  height: 50,
//                                  width: 50,
//                                ),
//                              ),
//                            ),
//                          ),
//                        ),
//                        Padding(
//                          padding:
//                              const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
//                          child: Text(
//                            'Umbrella',
//                            style:
//                                TextStyle(color: Colors.white70, fontSize: 14),
//                          ),
//                        ),
//                        Opacity(
//                          opacity: colorChangeUmbrella ? 1.0 : 0.0,
//                          child: Padding(
//                            padding: const EdgeInsets.only(top: 10.0),
//                            child: Container(
//                                color: Colors.transparent,
//                                width: 120,
//                                height: 5,
//                                child: Slider(
//                                  activeColor: Colors.indigoAccent,
//                                  min: 0.0,
//                                  max: 15.0,
//                                  onChanged: (newRating) async {
//                                    setState(() {
//                                      sliderValue = newRating;
//                                    });
//                                    await setVol(newRating.toInt());
//                                    await updateVolumes();
//                                  },
//                                  value: sliderValue,
//                                )),
//                          ),
//                        ),
//                      ],
//                    ),
//                  ],
//                ),
//                Column(
//                  children: <Widget>[
//                    Column(
//                      mainAxisAlignment: MainAxisAlignment.center,
//                      crossAxisAlignment: CrossAxisAlignment.center,
//                      children: <Widget>[
//                        GestureDetector(
//                          onTap: () {
//                            print('Window');
//                            changeWindow();
//                            playWindow();
//                          },
//                          child: ClipRRect(
//                            borderRadius: BorderRadius.only(
//                              topLeft: Radius.circular(25.0),
//                              topRight: Radius.circular(25.0),
//                              bottomLeft: Radius.circular(25.0),
//                              bottomRight: Radius.circular(25.0),
//                            ),
//                            child: Container(
//                              decoration: BoxDecoration(
//                                gradient: LinearGradient(
//                                  colors: [
//                                    colorChangeWindow
//                                        ? Colors.red[500]
//                                        : Colors.red[900],
//                                    colorChangeWindow
//                                        ? Colors.blue[500]
//                                        : Colors.blue[900],
//                                  ],
//                                  begin: Alignment.topRight,
//                                  end: Alignment.centerLeft,
//                                ),
//                              ),
//                              child: Container(
//                                margin: EdgeInsets.symmetric(
//                                    vertical: 15, horizontal: 15),
//                                //color: Color.fromARGB(255, 73, 248, 161),
//                                child: Image.asset(
//                                  "images/window.png",
//                                  fit: BoxFit.cover,
//                                  height: 50,
//                                  width: 50,
//                                ),
//                              ),
//                            ),
//                          ),
//                        ),
//                        Padding(
//                          padding:
//                              const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
//                          child: Text(
//                            'Window',
//                            style:
//                                TextStyle(color: Colors.white70, fontSize: 14),
//                          ),
//                        ),
//                        Opacity(
//                          opacity: colorChangeWindow ? 1.0 : 0.0,
//                          child: Padding(
//                            padding: const EdgeInsets.only(top: 10.0),
//                            child: Container(
//                                color: Colors.transparent,
//                                width: 120,
//                                height: 5,
//                                child: Slider(
//                                  activeColor: Colors.indigoAccent,
//                                  min: 0.0,
//                                  max: 15.0,
//                                  onChanged: (newRating) async {
//                                    setState(() {
//                                      sliderValue = newRating;
//                                    });
//                                    await setVol(newRating.toInt());
//                                    await updateVolumes();
//                                  },
//                                  value: sliderValue,
//                                )),
//                          ),
//                        ),
//                      ],
//                    ),
//                  ],
//                )
//              ],
//            ),
          ],
        ),
      ),
    );
  }

  //from here the audio players starts

  AudioPlayer advancedPlayerForest,
      advancedPlayerLeaf,
      advancedPlayerWindow,
      advancedPlayerRain,
      advancedPlayerRoof,
      advancedPlayerUmbrella;
  AudioCache audioCacheForest,
      audioCacheWindow,
      audioCacheLeaf,
      audioCacheRain,
      audioCacheRoof,
      audioCacheUmbrella;

  void initPlayer() {
    advancedPlayerForest = new AudioPlayer();
    audioCacheForest = new AudioCache(fixedPlayer: advancedPlayerForest);

    //

    advancedPlayerLeaf = new AudioPlayer();
    audioCacheLeaf = new AudioCache(fixedPlayer: advancedPlayerLeaf);

    advancedPlayerRain = new AudioPlayer();
    audioCacheRain = new AudioCache(fixedPlayer: advancedPlayerRain);

    advancedPlayerRoof = new AudioPlayer();
    audioCacheRoof = new AudioCache(fixedPlayer: advancedPlayerRoof);

    advancedPlayerUmbrella = new AudioPlayer();
    audioCacheUmbrella = new AudioCache(fixedPlayer: advancedPlayerUmbrella);

    advancedPlayerWindow = new AudioPlayer();
    audioCacheWindow = new AudioCache(fixedPlayer: advancedPlayerWindow);
  }

//  from here the functions that will play the music will start
//  to play forest music
  void playForest() {
    if (colorChangeForest == false) {
      advancedPlayerForest.stop();
    } else if (colorChangeForest == true) {
      audioCacheForest.play('pOneFourForestAudio.mp3');
    }
  }

  //  to play leaf music
  void playLeaf() {
    if (colorChangeleaf == false) {
      advancedPlayerLeaf.stop();
    } else if (colorChangeleaf == true) {
      audioCacheLeaf.play('leaf.mp3');
    }
  }

  //  to play rain music
  void playRain() {
    if (colorChangeRain == false) {
      advancedPlayerRain.stop();
    } else if (colorChangeRain == true) {
      audioCacheRain.play('rain.oga');
    }
  }

  //  to play roof music
  void playRoof() {
    if (colorChangeRoof == false) {
      advancedPlayerRoof.stop();
    } else if (colorChangeRoof == true) {
      audioCacheRoof.play('roof.mp3');
    }
  }

  //  to play umbrella music
  void playUmbrella() {
    if (colorChangeUmbrella == false) {
      advancedPlayerUmbrella.stop();
    } else if (colorChangeUmbrella == true) {
      audioCacheUmbrella.play('umbrella.mp3');
    }
  }

  //  to play window music
  void playWindow() {
    if (colorChangeWindow == false) {
      advancedPlayerWindow.stop();
    } else if (colorChangeWindow == true) {
      audioCacheWindow.play('window.mp3');
    }
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
