import 'package:flutter/material.dart';

class FormUser extends StatefulWidget {
  @override
  _FormUserState createState() => _FormUserState();
}

class _FormUserState extends State<FormUser> {
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final jawatanController = TextEditingController();
  final bahagianController = TextEditingController();
  final urusanController = TextEditingController();
  final tarikhBertolakController = TextEditingController();
  final masaBertolakController = TextEditingController();
  final jenisKenderaanBertolakController = TextEditingController();
  final tarikhBalikController = TextEditingController();
  final masaBalikController = TextEditingController();
  final jenisKenderaanBalikController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Form"),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView( // Added SingleChildScrollView
          child: Container(
            margin: EdgeInsets.all(15),
            child: Form(
              key: _formKey,
              child: Column(children: [
                TextFormField(
                  controller: nameController,
                  validator: (value) {
                    if(value == null || value.isEmpty) {
                      return "Text can't be null";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Name'),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: jawatanController,
                  validator: (value) {
                    if(value == null || value.isEmpty) {
                      return "Text can't be null";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Jawatan'),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: bahagianController,
                  validator: (value) {
                    if(value == null || value.isEmpty) {
                      return "Text can't be null";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Bahagian'),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    "Urusan",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 24,
                    ),
                  ),
                ),
                TextFormField(
                  controller: urusanController,
                  validator: (value) {
                    if(value == null || value.isEmpty) {
                      return "Text can't be null";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Urusan'),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    "Butir-butir Perjalanan",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 24,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    "Bertolak",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 24,
                    ),
                  ),
                ),
                TextFormField(
                  controller: tarikhBertolakController,
                  validator: (value) {
                    if(value == null || value.isEmpty) {
                      return "Text can't be null";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Tarikh'),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: masaBertolakController,
                  validator: (value) {
                    if(value == null || value.isEmpty) {
                      return "Text can't be null";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Masa Bertolak'),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: jenisKenderaanBertolakController,
                  validator: (value) {
                    if(value == null || value.isEmpty) {
                      return "Text can't be null";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Jenis Kenderaan'),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    "Balik",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 24,
                    ),
                  ),
                ),
                TextFormField(
                  controller: tarikhBalikController,
                  validator: (value) {
                    if(value == null || value.isEmpty) {
                      return "Text can't be null";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Tarikh'),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: masaBalikController,
                  validator: (value) {
                    if(value == null || value.isEmpty) {
                      return "Text can't be null";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Masa Bertolak'),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: jenisKenderaanBalikController,
                  validator: (value) {
                    if(value == null || value.isEmpty) {
                      return "Text can't be null";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Jenis Kenderaan'),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: double.infinity, 
                  child: ElevatedButton(
                    onPressed: () {
                      if(_formKey.currentState!.validate()) {
                        //DO something
                        print("validation success");
                      } else {
                        print("validation failed");
                      }
                    }, 
                    child: Text("Submit")
                  ),
                ),
              ]),  
            ),
          ),
        ),
      ),
    );
  }
}
