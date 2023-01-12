import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:heroanimation/photohero.dart';

class HeroAnimation extends StatelessWidget {
  const HeroAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    timeDilation = 5.0; //where 1.0 means normal animation

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Simple Animation'),
      ),
      body: Center(
        child: PhotoHero(
          photo: image.png, //will input my image here
          onTap:() {
            Navigator.of(context).push(MaterialPageRoute<void>(
              builder: (BuildContext (context) {
                return Scaffold(
                  appBar: AppBar(
                    title: const Text ("Page name"),
                  ),
                  body: Container(
                    color: Colors.lightBlueAccent,
                    padding: const EdgeInsets.all(16.0),
                    alignment: Alignment.topLeft,
                    child: PhotoHero(
                      photo: photo, 
                      onTap: () {
                        Navigator.of(context).pop();
                      }, 
                      width: 100.0)
                  ),
                );
              })));
          }, 
          width: 300),
      ),
    );
  }
}
