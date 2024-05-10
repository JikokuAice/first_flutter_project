import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './list.dart';
import './story.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final images = [
    "030310_1350926.png.1500x1005_q95_crop-smart_upscale.png",
    "FamilyCamping-2021-GettyImages-948512452-2.jpg",
    "wallpaperflare.com_wallpaper (1).jpg",
    "n-miyazaki-b-20140830.jpg",
    "wallpaperflare.com_wallpaper.jpg",
    "wallpaperflare.com_wallpaper.jpg"
  ];

  final story = ["story 1", "story 2", " story 3", "story 4", "story 5"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          shape:
              const Border(bottom: BorderSide(color: Colors.black, width: 1)),
          backgroundColor: Colors.white,
          title: const Text(
            "Myinsta",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: IconButton(onPressed: () {}, icon: Icon(Icons.add)),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
            ),
          ],
        ),
        body: Column(children: <Widget>[
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: story.length,
                itemBuilder: (context, index) {
                  return circular();
                }),
          ),
          Expanded(
            flex: 4,
            child: ListView.builder(
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return list(images: images[index]);
                }),
          ),
        ]),
      ),
    );
  }
}
