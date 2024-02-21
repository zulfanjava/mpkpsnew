import 'package:flutter/material.dart';

class CarFormScreen extends StatefulWidget {
  const CarFormScreen({Key? key}) : super(key: key);

  @override
  _CarFormScreenState createState() => _CarFormScreenState();
}

class _CarFormScreenState extends State<CarFormScreen> {
  final _formKey = GlobalKey<FormState>();
  final _carNameController = TextEditingController();
  final _carModelController = TextEditingController();
  final _carYearController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Car"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: _carNameController,
                decoration: const InputDecoration(
                  labelText: 'Enter car name',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter car name';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _carModelController,
                decoration: const InputDecoration(
                  labelText: 'Enter car model',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter car model';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _carYearController,
                decoration: const InputDecoration(
                  labelText: 'Enter car year',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter car year';
                  }
                  return null;
                },
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')),
                    );
                  }
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
