import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        splashColor: Colors.white38,
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(color: Colors.white, width: 2),
              borderRadius: BorderRadius.circular(20)),
          child: Stack(
            children: [
              Ink.image(
                image:
                    NetworkImage('https://wallpaperaccess.com/full/396671.jpg'),
                fit: BoxFit.cover,
              ),
              Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('assets/pngegg (2).png'),
                    height: 20,
                  ),
                  Divider(
                    height: 5,
                  ),
                  Text(
                    'Lakshman K',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                  Divider(
                    height: 2,
                  ),
                  Image(
                    image: AssetImage('assets/pngegg (2).png'),
                    height: 20,
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
