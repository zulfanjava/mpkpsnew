import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SenaraiPemanduScreen extends StatefulWidget {
  const SenaraiPemanduScreen({Key? key}) : super(key: key);

  @override
  _PemanduScreenState createState() => _PemanduScreenState();
}

class _PemanduScreenState extends State<SenaraiPemanduScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SenaraiPemandu"),
      ),
    );
  }
}
