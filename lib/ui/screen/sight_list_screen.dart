import 'package:flutter/material.dart';

class SightListScreen extends StatefulWidget {
  @override
  _SightListScreenState createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        toolbarHeight: 112.0,
        title: RichText(
          textAlign: TextAlign.left,
          maxLines: 2,
          text: TextSpan(
            style: _appBarStyle,
            children: [
              TextSpan(text: 'С', style: TextStyle(color: Colors.green)),
              TextSpan(text: 'писок\n'),
              TextSpan(text: 'и', style: TextStyle(color: Colors.yellow)),
              TextSpan(text: 'нтересных мест'),
            ],
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
    );
  }
}

const _appBarStyle = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.w700,
  fontSize: 32.0,
  height: 36.0 / 32.0,
);
