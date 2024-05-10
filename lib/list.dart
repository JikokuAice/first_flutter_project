import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class list extends StatefulWidget {
  const list({super.key, required this.images});
  final images;

  @override
  State<list> createState() => _listState();
}

class _listState extends State<list> {
  var islike = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            border: Border.all(
                color: const Color.fromARGB(255, 99, 99, 99), width: 1)),
        height: 300,
        child: Column(children: [
          Expanded(
            flex: 5,
            child: Stack(alignment: Alignment.center, children: [
              Image.asset(
                "./image/${widget.images}",
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              Visibility(
                  visible: islike,
                  child: const Icon(
                    Icons.favorite,
                    color: Colors.white,
                    size: 100,
                  ))
            ]),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      islike = !islike;
                      Timer(Duration(seconds: 1), () {
                        setState(() {
                          islike = !islike;
                        });
                      });
                    });
                  },
                  icon: const Icon(Icons.favorite),
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.comment))
              ],
            ),
          )
        ]),
      ),
    );
  }
}
