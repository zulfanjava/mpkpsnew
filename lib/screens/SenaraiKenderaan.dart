import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SenaraiKenderaanScreen extends StatefulWidget {
  const SenaraiKenderaanScreen({Key? key}) : super(key: key);

  @override
  _SenaraiKenderaanScreenState createState() => _SenaraiKenderaanScreenState();
}

class _SenaraiKenderaanScreenState extends State<SenaraiKenderaanScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Senarai Kenderaan"),
      ),
    );
  }
}
