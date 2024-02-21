import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SenaraiStaffScreen extends StatefulWidget {
  const SenaraiStaffScreen({Key? key}) : super(key: key);

  @override
  _SenaraiStaffScreenState createState() => _SenaraiStaffScreenState();
}

class _SenaraiStaffScreenState extends State<SenaraiStaffScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Senarai Staff"),
      ),
    );
  }
}
